#
#   Ghosthunt Tick
#   
#   Purpose: To tick the ghosthunt game state
#
#   Input: None
#


execute as @a[tag=ghostcraft.ghost] at @s run function #ghostcraft:ability/tick

bossbar set ghostcraft.game.time players @a
execute store result bossbar ghostcraft.game.time value run scoreboard players get game_timer ghostcraft.temp

function ghostcraft:game/ghosthunt/mid_game_player_check
execute if score ghosthunt.mid_game_player_check.ended ghostcraft.temp matches 1 run return 0

execute as @a if score @s ghostcraft.trigger.game matches 1.. run function ghostcraft:game/ghosthunt/trigger

execute if score timer ghostcraft.temp matches 0 as @e[type=#ghostcraft:player,tag=ghostcraft.ghost] at @s run function #ghostcraft:game/ghost/effect
scoreboard players add timer ghostcraft.temp 1
scoreboard players operation timer ghostcraft.temp %= timer_cycle ghostcraft.temp

function ghostcraft:game/ghosthunt/timer
execute if score ghosthunt.timer.ended ghostcraft.temp matches 1 run return 0

execute as @e[tag=ghostcraft.ghost] at @s run particle minecraft:glow ~ ~1 ~ 0.1 0.5 0.1 0 2 force @a[tag=ghostcraft.spectating]
