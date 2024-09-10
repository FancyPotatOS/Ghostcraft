#
#   Lobby Trigger
#   
#   Purpose: To update any players who have triggered something
#
#   Input: None
#


execute if score @s ghostcraft.trigger.game matches 1 run function ghostcraft:game/lobby/to_countdown

execute if score @s ghostcraft.trigger.game matches 2 run function ghostcraft:game/lobby/role/spectate

execute if score @s ghostcraft.trigger.game matches 3 run function ghostcraft:game/lobby/role/player

execute if score @s ghostcraft.trigger.game matches 4 run function ghostcraft:game/lobby/to_map_change

scoreboard players set @s ghostcraft.trigger.game 0

