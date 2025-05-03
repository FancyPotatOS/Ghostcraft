#
#   Ghosthunt Ghost Role
#   
#   Purpose: To assign the player as a ghost
#
#   Input: None
#

execute unless score ghosts_left ghostcraft.temp matches 1.. run return 0

tag @s add ghostcraft.ghost
tag @s add ghostcraft.game.ghosthunt.last_ghost

scoreboard players remove ghosts_left ghostcraft.temp 1

