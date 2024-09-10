#
#   Countdown Tick
#   
#   Purpose: To tick the lobby game state
#
#   Input: None
#

execute unless function ghostcraft:game/player_check run return run function ghostcraft:game/errors/not_enough_players


scoreboard players remove countdown ghostcraft.master 1

execute if score countdown ghostcraft.master matches ..0 run return run function ghostcraft:game/countdown/start_game

function ghostcraft:game/countdown/visual


execute as @a if score @s ghostcraft.trigger.game matches 1.. run function ghostcraft:game/countdown/trigger

