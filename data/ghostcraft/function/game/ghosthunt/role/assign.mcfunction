#
#   Ghosthunt Role Assignment
#   
#   Purpose: To assign players their roles
#
#   Input: None
#


# Get the number of ghosts we want, which will be accounted for in the ghost assigning function
scoreboard players operation ghosts_left ghostcraft.temp = game.ghosthunt.ghosts ghostcraft.config

function ghostcraft:game/ghosthunt/role/choose_ghost

execute as @e[type=#ghostcraft:player,tag=!ghostcraft.spectator] if entity @s[tag=!ghostcraft.ghost] run function ghostcraft:game/ghosthunt/role/survivor

