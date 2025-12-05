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

execute if score @s ghostcraft.trigger.game matches 5 run function ghostcraft:game/lobby/music/toggle

execute if score @s ghostcraft.trigger.game matches 6 run function ghostcraft:game/lobby/autostart/toggle

scoreboard players set @s ghostcraft.trigger.game 0

