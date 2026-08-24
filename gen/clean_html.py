#!/usr/bin/env python3
"""Strip presentation/DOM attributes from an HTML file or snippet.

The parser is intentionally tolerant: it accepts partial HTML such as a single
``<div>...</div>`` block and rebuilds each element with only data-bearing
attributes kept.

Examples:
    python gen/clean_html.py page.html
    python gen/clean_html.py page.html cleaned.html
    python gen/clean_html.py page.html --in-place
    python gen/clean_html.py page.html --keep-empty-tags
    python gen/clean_html.py page.html --keep data-score --drop-data-attrs
"""

from __future__ import annotations

import argparse
import sys
from dataclasses import dataclass, field
from html import escape
from html.parser import HTMLParser
from pathlib import Path


DEFAULT_KEEP_ATTRS = {
    "href",
    "src",
    "srcset",
    "alt",
    "title",
    "value",
    "name",
    "type",
    "placeholder",
    "datetime",
    "cite",
    "poster",
    "content",
    "charset",
    "http-equiv",
    "rel",
    "target",
    "download",
    "action",
    "method",
    "label",
    "kind",
    "srclang",
    "aria-label",
}

DEFAULT_KEEP_BOOLEAN_ATTRS = {
    "autoplay",
    "checked",
    "controls",
    "disabled",
    "loop",
    "multiple",
    "muted",
    "open",
    "readonly",
    "required",
    "selected",
}

VOID_TAGS = {
    "area",
    "base",
    "br",
    "col",
    "embed",
    "hr",
    "img",
    "input",
    "link",
    "meta",
    "param",
    "source",
    "track",
    "wbr",
}

ALWAYS_CONTENTFUL_EMPTY_TAGS = {
    "br",
    "hr",
    "wbr",
}


@dataclass
class RawNode:
    text: str
    counts_as_content: bool = False


@dataclass
class ElementNode:
    tag: str
    attrs: list[tuple[str, str | None]]
    children: list["Node"] = field(default_factory=list)
    self_closing: bool = False
    void: bool = False


Node = ElementNode | RawNode


class CleaningHTMLParser(HTMLParser):
    """HTMLParser that strips attributes and optionally prunes empty elements."""

    def __init__(
        self,
        keep_attrs: set[str],
        keep_boolean_attrs: set[str],
        keep_data_attrs: bool,
        remove_empty_tags: bool,
    ) -> None:
        super().__init__(convert_charrefs=False)
        self.keep_attrs = {attr.lower() for attr in keep_attrs}
        self.keep_boolean_attrs = {attr.lower() for attr in keep_boolean_attrs}
        self.keep_data_attrs = keep_data_attrs
        self.remove_empty_tags = remove_empty_tags
        self.root = ElementNode("__root__", [])
        self.stack = [self.root]

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        normalized_tag = tag.lower()
        node = ElementNode(
            tag=tag,
            attrs=self._filtered_attrs(attrs),
            void=normalized_tag in VOID_TAGS,
        )
        self.stack[-1].children.append(node)
        if not node.void:
            self.stack.append(node)

    def handle_startendtag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        node = ElementNode(
            tag=tag,
            attrs=self._filtered_attrs(attrs),
            self_closing=True,
            void=tag.lower() in VOID_TAGS,
        )
        self.stack[-1].children.append(node)

    def handle_endtag(self, tag: str) -> None:
        normalized_tag = tag.lower()
        for index in range(len(self.stack) - 1, 0, -1):
            if self.stack[index].tag.lower() == normalized_tag:
                del self.stack[index:]
                return

        self.stack[-1].children.append(RawNode(f"</{tag}>"))

    def handle_data(self, data: str) -> None:
        self.stack[-1].children.append(RawNode(data, counts_as_content=bool(data.strip())))

    def handle_entityref(self, name: str) -> None:
        self.stack[-1].children.append(RawNode(f"&{name};", counts_as_content=True))

    def handle_charref(self, name: str) -> None:
        self.stack[-1].children.append(RawNode(f"&#{name};", counts_as_content=True))

    def handle_comment(self, data: str) -> None:
        self.stack[-1].children.append(RawNode(f"<!--{data}-->"))

    def handle_decl(self, decl: str) -> None:
        self.stack[-1].children.append(RawNode(f"<!{decl}>", counts_as_content=True))

    def handle_pi(self, data: str) -> None:
        self.stack[-1].children.append(RawNode(f"<?{data}>", counts_as_content=True))

    def unknown_decl(self, data: str) -> None:
        self.stack[-1].children.append(RawNode(f"<![{data}]>", counts_as_content=True))

    def cleaned_html(self) -> str:
        if self.remove_empty_tags:
            self.root.children = self._pruned_children(self.root.children)
        return "".join(self._serialize_node(node) for node in self.root.children)

    def _filtered_attrs(self, attrs: list[tuple[str, str | None]]) -> list[tuple[str, str | None]]:
        return [
            (name.lower(), value)
            for name, value in attrs
            if self._should_keep_attr(name)
        ]

    def _should_keep_attr(self, name: str) -> bool:
        normalized_name = name.lower()
        if normalized_name in self.keep_attrs:
            return True
        if normalized_name in self.keep_boolean_attrs:
            return True
        return self.keep_data_attrs and normalized_name.startswith("data-")

    def _pruned_children(self, children: list[Node]) -> list[Node]:
        pruned_children: list[Node] = []
        for child in children:
            if isinstance(child, ElementNode):
                child.children = self._pruned_children(child.children)
                if self._element_has_content(child):
                    pruned_children.append(child)
            else:
                pruned_children.append(child)
        return pruned_children

    def _element_has_content(self, node: ElementNode) -> bool:
        normalized_tag = node.tag.lower()
        if normalized_tag in ALWAYS_CONTENTFUL_EMPTY_TAGS:
            return True
        if self._element_has_relevant_attr(node):
            return True
        return any(self._node_has_content(child) for child in node.children)

    def _node_has_content(self, node: Node) -> bool:
        if isinstance(node, RawNode):
            return node.counts_as_content
        return self._element_has_content(node)

    def _element_has_relevant_attr(self, node: ElementNode) -> bool:
        for _name, value in node.attrs:
            if value is None:
                return True
            if value.strip():
                return True
        return False

    def _serialize_node(self, node: Node) -> str:
        if isinstance(node, RawNode):
            return node.text

        attr_text = "".join(self._format_attr(name, value) for name, value in node.attrs)
        if node.self_closing:
            return f"<{node.tag}{attr_text} />"
        if node.void:
            return f"<{node.tag}{attr_text}>"

        child_text = "".join(self._serialize_node(child) for child in node.children)
        return f"<{node.tag}{attr_text}>{child_text}</{node.tag}>"

    def _format_attr(self, name: str, value: str | None) -> str:
        if value is None:
            return f" {name}"
        escaped_value = escape(value, quote=True)
        return f' {name}="{escaped_value}"'


def clean_html(
    html: str,
    keep_attrs: set[str] | None = None,
    keep_boolean_attrs: set[str] | None = None,
    keep_data_attrs: bool = True,
    remove_empty_tags: bool = True,
) -> str:
    parser = CleaningHTMLParser(
        keep_attrs=DEFAULT_KEEP_ATTRS | (keep_attrs or set()),
        keep_boolean_attrs=DEFAULT_KEEP_BOOLEAN_ATTRS | (keep_boolean_attrs or set()),
        keep_data_attrs=keep_data_attrs,
        remove_empty_tags=remove_empty_tags,
    )
    parser.feed(html)
    parser.close()
    return parser.cleaned_html()


def parse_args(argv: list[str]) -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description=(
            "Strip id, class, style, event handlers, and other nonessential "
            "attributes from an HTML file or snippet while preserving content, "
            "href/src links, data-* attributes, common data-bearing fields, and "
            "recursively removing empty elements."
        )
    )
    parser.add_argument(
        "input",
        nargs="?",
        help="HTML file to clean. Omit or use '-' to read from stdin.",
    )
    parser.add_argument(
        "output",
        nargs="?",
        help="Optional destination file. Defaults to stdout.",
    )
    parser.add_argument(
        "--in-place",
        action="store_true",
        help="Overwrite the input file with the cleaned HTML.",
    )
    parser.add_argument(
        "--keep",
        action="append",
        default=[],
        metavar="ATTR",
        help="Additional attribute to preserve. Can be passed multiple times.",
    )
    parser.add_argument(
        "--keep-boolean",
        action="append",
        default=[],
        metavar="ATTR",
        help="Additional boolean attribute to preserve.",
    )
    parser.add_argument(
        "--drop-data-attrs",
        action="store_true",
        help="Do not preserve data-* attributes.",
    )
    parser.add_argument(
        "--keep-empty-tags",
        action="store_true",
        help="Keep empty elements after attributes are stripped.",
    )
    parser.add_argument(
        "--encoding",
        default="utf-8",
        help="File encoding to read/write. Defaults to utf-8.",
    )
    return parser.parse_args(argv)


def validate_args(args: argparse.Namespace) -> None:
    if not args.in_place:
        return

    if args.input in (None, "-"):
        raise ValueError("--in-place requires an input file")
    if args.output is not None:
        raise ValueError("Provide either an output file or --in-place, not both")


def read_input(input_arg: str | None, encoding: str) -> tuple[str, Path | None]:
    if input_arg in (None, "-"):
        return sys.stdin.read(), None

    input_path = Path(input_arg)
    with input_path.open("r", encoding=encoding, newline="") as file:
        return file.read(), input_path


def write_output(
    cleaned: str,
    output_arg: str | None,
    input_path: Path | None,
    in_place: bool,
    encoding: str,
) -> None:
    if in_place:
        if input_path is None:
            raise ValueError("--in-place requires an input file")
        with input_path.open("w", encoding=encoding, newline="") as file:
            file.write(cleaned)
        return

    if output_arg is None:
        sys.stdout.write(cleaned)
        return

    with Path(output_arg).open("w", encoding=encoding, newline="") as file:
        file.write(cleaned)


def main(argv: list[str] | None = None) -> int:
    args = parse_args(sys.argv[1:] if argv is None else argv)
    try:
        validate_args(args)
        raw_html, input_path = read_input(args.input, args.encoding)
        cleaned = clean_html(
            raw_html,
            keep_attrs=set(args.keep),
            keep_boolean_attrs=set(args.keep_boolean),
            keep_data_attrs=not args.drop_data_attrs,
            remove_empty_tags=not args.keep_empty_tags,
        )
        write_output(cleaned, args.output, input_path, args.in_place, args.encoding)
    except OSError as error:
        print(f"clean_html.py: {error}", file=sys.stderr)
        return 1
    except ValueError as error:
        print(f"clean_html.py: {error}", file=sys.stderr)
        return 2
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
