#
#   Rocks Book Input
#   
#   Purpose: To add a page to the held book from an armor stand about this map
#
#   Input: None
#


data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {raw:\
[\
    {\
        "text":"          Rocks\n\n   A map created by         "\
    },\
    {\
        "text":"dmminecraft1",\
        "color":"dark_green",\
        "bold":true,\
        "hover_event": {"action": "show_text","value": "Click to view Shotbow profile"},\
        "click_event": {"action": "open_url","url": "https://shotbow.net/forum/members/mini_mc1.172117/"}\
    },\
    {\
        "text":"\n\nA jagged, floating valley with ores scattered about. Precarious paths span the exterior, overlooking the void."\
    },\
    [\
        {\
            "text":"\n\n          "\
        },\
        {\
            "text":"[Vote]",\
            "color":"green",\
            "hover_event":{"action":"show_text","value": "Click to vote!"},\
            "click_event":{"action": "run_command","command": "/trigger ghostcraft.game.map_change.vote set 6"}\
        }\
    ]\
]}

