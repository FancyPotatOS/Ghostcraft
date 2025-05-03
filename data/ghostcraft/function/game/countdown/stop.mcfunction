#
#   Lobby Stop
#   
#   Purpose: To tear down any specific values related to the lobby
#
#   Input: None
#


title @a subtitle ''
scoreboard players set coming_from_lobby ghostcraft.temp 1

execute as @e[type=#ghostcraft:player] run function ghostcraft:game/lobby/player_teardown

