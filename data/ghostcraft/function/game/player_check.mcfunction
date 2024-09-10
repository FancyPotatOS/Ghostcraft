#
#   Game Player Check
#   
#   Purpose: To check if the current gamemode has enough players
#
#   Input: None
#


scoreboard players set game.player_check.success ghostcraft.temp 1

function #ghostcraft:game/player_check

execute if score game.player_check.success ghostcraft.temp matches 0 run return fail
execute if score game.player_check.success ghostcraft.temp matches 1 run return 1

