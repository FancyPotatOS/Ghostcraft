#
#   Initialize All Players
#   
#   Purpose: To ensure all players are initialized (uninitialized if scoreboard UUID is 0)
#
#   Input: None
#


execute as @e[type=#ghostcraft:player,scores={ghostcraft.uuid=0}] at @s run function ghostcraft:logic/initialize_player

