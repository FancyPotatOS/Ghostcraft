
execute if score game.lobby.next_game.enabled ghostcraft.config matches 1 run return run function ghostcraft:game/lobby/autostart/disable

execute if score game.lobby.next_game.enabled ghostcraft.config matches 0 run return run function ghostcraft:game/lobby/autostart/enable

