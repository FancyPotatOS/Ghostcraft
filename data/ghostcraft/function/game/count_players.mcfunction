#
#   Count Players
#   
#   Purpose: To set the score player_count ghostcraft.temp to the number of players
#
#   Input: None
#


scoreboard players set player_count ghostcraft.temp 0
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.spectator] run scoreboard players add player_count ghostcraft.temp 1

