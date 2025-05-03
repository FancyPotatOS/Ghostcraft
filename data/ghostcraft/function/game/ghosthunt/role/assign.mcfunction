#
#   Ghosthunt Role Assignment
#   
#   Purpose: To assign players their roles
#
#   Input: None
#


scoreboard players operation ghosts_left ghostcraft.temp = game.ghosthunt.ghosts ghostcraft.config
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.spectator,sort=random,tag=!ghostcraft.game.ghosthunt.last_ghost] run function ghostcraft:game/ghosthunt/role/ghost
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.spectator] if entity @s[tag=!ghostcraft.ghost] run function ghostcraft:game/ghosthunt/role/survivor

