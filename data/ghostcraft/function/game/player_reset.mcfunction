#
#   Player Reset
#   
#   Purpose: To reset the player from anything like items, tags, etc.
#
#   Input: None
#


clear @s
effect clear @s instant_health

tag @s remove ghostcraft.survivor
tag @s remove ghostcraft.ghost

function #ghostcraft:player/reset

