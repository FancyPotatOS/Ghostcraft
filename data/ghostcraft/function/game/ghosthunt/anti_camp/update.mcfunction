#
#   Update
#   
#   Purpose: To run all anti-camp update logic
#
#   Input: None
#


execute as @e[type=#ghostcraft:player,tag=ghostcraft.survivor] at @s run function ghostcraft:game/ghosthunt/anti_camp/player/update

