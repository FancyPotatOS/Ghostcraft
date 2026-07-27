#
#   Stringify Dialog Middle
#   
#   Purpose: To convert the provided macro value into a string without the initial and last list characters `[` and `]`
#
#   Input: {dialog_middle: list}
#


# $tellraw @s $(dialog_middle)
$data modify storage ghostcraft:data string_middle set value $(dialog_middle)

