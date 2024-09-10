#
#   Store the player position difference with the summoned block
#   
#   Purpose: To get the position difference and put it in storage
#
#   Input: None
#


# Run as armor stand in the middle of the block
# Target player is tagged with ghostcraft.crafting_table.source

# Storage is at ghostcraft:data block_launch
#data merge storage ghostcraft:data {block_launch:{motion_x:0,motion_y:0,motion_z:0}}

# X
execute store result score @s ghostcraft.temp run data get entity @s Pos[0] 500
execute as @e[tag=ghostcraft.crafting_table.source,limit=1] store result score @s ghostcraft.temp run data get entity @s Pos[0] 500
scoreboard players operation @s ghostcraft.temp -= @e[tag=ghostcraft.crafting_table.source,limit=1] ghostcraft.temp
execute store result storage ghostcraft:data block_launch.motion_x double 0.0005 run scoreboard players get @s ghostcraft.temp

# Y
execute store result score @s ghostcraft.temp run data get entity @s Pos[1] 500
execute as @e[tag=ghostcraft.crafting_table.source,limit=1] store result score @s ghostcraft.temp run data get entity @s Pos[1] 500
scoreboard players operation @s ghostcraft.temp -= @e[tag=ghostcraft.crafting_table.source,limit=1] ghostcraft.temp
execute store result storage ghostcraft:data block_launch.motion_y double 0.0005 run scoreboard players get @s ghostcraft.temp

# Z
execute store result score @s ghostcraft.temp run data get entity @s Pos[2] 500
execute as @e[tag=ghostcraft.crafting_table.source,limit=1] store result score @s ghostcraft.temp run data get entity @s Pos[2] 500
scoreboard players operation @s ghostcraft.temp -= @e[tag=ghostcraft.crafting_table.source,limit=1] ghostcraft.temp
execute store result storage ghostcraft:data block_launch.motion_z double 0.0005 run scoreboard players get @s ghostcraft.temp

