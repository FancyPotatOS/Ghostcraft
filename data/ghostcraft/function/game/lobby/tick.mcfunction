#
#   Lobby Tick
#   
#   Purpose: To tick the lobby game state
#
#   Input: None
#


execute as @a if score @s ghostcraft.trigger.game matches 1.. run function ghostcraft:game/lobby/trigger

