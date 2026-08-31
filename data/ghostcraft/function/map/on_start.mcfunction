#
#   On Map Start
#   
#   Purpose: To update all map-related startup functions
#
#   Input: None
#


execute as @e[type=minecraft:interaction,tag=ghostcraft.map.interaction] at @s run function ghostcraft:map/reset_interaction

