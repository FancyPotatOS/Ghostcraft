#
#   On Player Hurt
#   
#   Purpose: To calculate required values for when a player gets hurt
#
#   Input: None
#


execute if entity @s[tag=ghostcraft.survivor] run function ghostcraft:game/survivor/on_hurt
execute if entity @s[tag=ghostcraft.ghost] run function ghostcraft:game/ghost/on_hurt

