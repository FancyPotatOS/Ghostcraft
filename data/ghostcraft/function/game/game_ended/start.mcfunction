#
#   Lobby Start
#   
#   Purpose: To set up any specific values related to the lobby
#
#   Input: None
#


scoreboard players set coming_from_lobby ghostcraft.temp 1

execute as @e[type=#ghostcraft:player] run function ghostcraft:game/lobby/player_setup
execute as @e[type=#ghostcraft:player] run function ghostcraft:logic/clear_entity

scoreboard players reset coming_from_lobby ghostcraft.temp

scoreboard players set timer ghostcraft.temp 200

tellraw @a {"text":"Returning to the lobby..."}
