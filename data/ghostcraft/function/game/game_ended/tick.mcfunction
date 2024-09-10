#
#   Lobby Tick
#   
#   Purpose: To tick the lobby game state
#
#   Input: None
#


scoreboard players remove timer ghostcraft.temp 1
execute if score timer ghostcraft.temp matches 0 run return run function ghostcraft:game/game_ended/to_lobby

execute as @a if score @s ghostcraft.trigger.game matches 1.. run function ghostcraft:game/game_ended/trigger

