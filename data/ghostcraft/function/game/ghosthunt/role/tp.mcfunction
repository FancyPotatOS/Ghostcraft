#
#   Ghosthunt Teleport
#   
#   Purpose: To teleport players based on their roles
#
#   Input: None
#


execute as @e[type=#ghostcraft:player,tag=ghostcraft.survivor] run tp @s @e[tag=ghostcraft.map.survivor,limit=1,sort=random]
execute as @e[type=#ghostcraft:player,tag=ghostcraft.spectator] run tp @s @e[type=#ghostcraft:player,tag=ghostcraft.survivor,sort=random,limit=1]
execute as @e[type=#ghostcraft:player,tag=ghostcraft.ghost] run tp @s @e[tag=ghostcraft.map.ghost,limit=1,sort=random]

