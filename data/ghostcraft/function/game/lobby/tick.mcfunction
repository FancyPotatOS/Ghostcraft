#
#   Lobby Tick
#   
#   Purpose: To tick the lobby game state
#
#   Input: None
#


function ghostcraft:game/ghost/particle/tick

execute as @a if score @s ghostcraft.trigger.game matches 1.. run function ghostcraft:game/lobby/trigger

# Automatic next game cooldown
scoreboard players remove next_game.cooldown ghostcraft.temp 1
execute if score game.lobby.next_game.enabled ghostcraft.config matches 1 if score phase ghostcraft.master matches 0 if score next_game.cooldown ghostcraft.temp matches 0 run function ghostcraft:game/lobby/to_countdown

execute as @a at @s if predicate {condition:"location_check",predicate:{"position":{y:{"max":-64}}}} run kill @s

