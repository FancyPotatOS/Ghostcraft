#
#   Player Reset
#   
#   Purpose: To reset this player of all ghosthunt-game related effects, tags, or other data
#
#   Input: None
#


scoreboard players reset @s ghostcraft.game.ghosthunt.ghost_kills

tag @s remove ghostcraft.survivor
tag @s remove ghostcraft.ghost

tag @s remove ghostcraft.game.ghosthunt.role.ghost
tag @s remove ghostcraft.game.ghosthunt.role.survivor

team leave ghostcraft.game.ghosthunt.survivor
team leave ghostcraft.game.ghosthunt.ghost
function ghostcraft:ability/damage_indicator/revoke

tag @s remove ghostcraft.spectating

attribute @s minecraft:attack_speed modifier remove ghostcraft.game.ghosthunt.survivor.attack_speed

