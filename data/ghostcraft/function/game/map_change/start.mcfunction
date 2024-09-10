#
#   Map Change Start
#   
#   Purpose: To set up any specific values related to the map change state
#
#   Input: None
#


scoreboard players set map.change_cooldown ghostcraft.config 2

scoreboard players operation map.change_cooldown ghostcraft.temp = map.change_cooldown ghostcraft.config
scoreboard players set timer ghostcraft.temp 300
scoreboard players set second ghostcraft.temp 20

execute as @a run function ghostcraft:game/map_change/player_setup

tellraw @a [{"text":"Map voting has begun. Vote for a map in the book!"}]

