#
#   Countdown Start
#   
#   Purpose: To set up any specific values related to the lobby
#
#   Input: None
#


execute unless function ghostcraft:game/player_check run return run function ghostcraft:game/errors/not_enough_players

scoreboard players set coming_from_lobby ghostcraft.temp 1
function ghostcraft:game/lobby/player_setup

scoreboard players set countdown ghostcraft.master 200
scoreboard players set second ghostcraft.temp 20

scoreboard players reset coming_from_lobby ghostcraft.temp
