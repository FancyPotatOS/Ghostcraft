#
#   Player Reset
#   
#   Purpose: To reset the player from anything like items, tags, etc.
#
#   Input: None
#


function ghostcraft:logic/clear_entity
effect clear @s instant_health

tag @s remove ghostcraft.survivor
tag @s remove ghostcraft.ghost

attribute @s minecraft:attack_speed modifier remove ghostcraft.game.ghosthunt.survivor.attack_speed

function #ghostcraft:player/reset

