#
#   Lobby Stop
#   
#   Purpose: To tear down any specific values related to the lobby
#
#   Input: None
#



execute as @e[type=#ghostcraft:player] run function ghostcraft:game/lobby/player_teardown

scoreboard players set coming_from_lobby ghostcraft.temp 1


