#
#   Setup Player Mount
#   
#   Purpose: To setup the mounting player
#
#   Input: None
#


scoreboard players operation @s ghostcraft.chair.cooldown = world_time ghostcraft.master
scoreboard players operation @s ghostcraft.chair.cooldown += chair.cooldown ghostcraft.config
ride @s mount @n[tag=ghostcraft.chair.current]
tag @s remove ghostcraft.chair.target
tag @s add ghostcraft.chair.sitting

