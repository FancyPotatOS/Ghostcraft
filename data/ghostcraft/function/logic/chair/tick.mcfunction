#
#   Chair Tick
#   
#   Purpose: To update all chair-related functionality
#
#   Input: None
#


# Data for armor stands:
# {Rotation:[180.0,0.0],Tags:[ghostcraft.map,ghostcraft.chair],Invisible:true,Invulnerable:true,NoBasePlate:true,attributes:[{id:"minecraft:scale",base:0.1}]}

execute as @e[type=minecraft:armor_stand,tag=ghostcraft.chair] at @s run function ghostcraft:logic/chair/update

execute as @e[type=#ghostcraft:player,tag=ghostcraft.chair.sitting] unless data entity @s RootVehicle run function ghostcraft:logic/chair/reset_player_mount

