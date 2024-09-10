#
#   Lobby Trigger
#   
#   Purpose: To update any players who have triggered something
#
#   Input: None
#


execute if score @s ghostcraft.trigger.game matches 2 run function ghostcraft:game/lobby/role/spectate

execute if score @s ghostcraft.trigger.game matches 3 run function ghostcraft:game/lobby/role/player

scoreboard players set @s ghostcraft.trigger.game 0

