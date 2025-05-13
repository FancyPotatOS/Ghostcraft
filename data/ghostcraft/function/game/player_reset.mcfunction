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

execute unless score phase ghostcraft.master matches 2 run tag @s remove ghostcraft.game.ghosthunt.role.ghost
execute unless score phase ghostcraft.master matches 2 run tag @s remove ghostcraft.game.ghosthunt.role.survivor

team leave ghostcraft.game.ghosthunt.survivor
team leave ghostcraft.game.ghosthunt.ghost
function ghostcraft:ability/damage_indicator/revoke

attribute @s minecraft:attack_speed modifier remove ghostcraft.game.ghosthunt.survivor.attack_speed

function #ghostcraft:player/reset

