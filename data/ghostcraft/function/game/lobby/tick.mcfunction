#
#   Lobby Tick
#   
#   Purpose: To tick the lobby game state
#
#   Input: None
#


execute as @a if score @s ghostcraft.trigger.game matches 1.. run function ghostcraft:game/lobby/trigger

execute as @a at @s if predicate {condition:"location_check",predicate:{"position":{y:{"max":-64}}}} run kill @s

