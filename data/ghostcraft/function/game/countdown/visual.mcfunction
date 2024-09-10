#
#   Countdown Visual
#   
#   Purpose: To check if should display the relevant countdown to the player
#
#   Input: None
#


scoreboard players operation temp ghostcraft.temp = countdown ghostcraft.master
scoreboard players operation temp ghostcraft.temp %= second ghostcraft.temp

scoreboard players operation seconds ghostcraft.temp = countdown ghostcraft.master
scoreboard players operation seconds ghostcraft.temp /= second ghostcraft.temp

execute if score temp ghostcraft.temp matches 0 as @a at @s run function ghostcraft:game/countdown/display

