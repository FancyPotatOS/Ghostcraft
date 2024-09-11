#
#   Tick
#   
#   Purpose: To update everything that can't be triggered by an event
#
#   Input: None
#


# Ensure every player has a UUID initialized
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.player.initialized] at @s run function ghostcraft:logic/refresh_player

execute as @a if score @s ghostcraft.times_left matches 1.. at @s run function ghostcraft:logic/refresh_player

# Update timer triggers
execute as @e[tag=ghostcraft.item.timer] at @s run function ghostcraft:logic/timer
execute as @e[tag=ghostcraft.item.timer_cycle] at @s run function ghostcraft:logic/timer_cycle

# Update ride triggers
execute as @e[tag=ghostcraft.item.ride_trigger] at @s run function ghostcraft:logic/test_ride_trigger

# Update sync tagged entities
execute as @e[tag=ghostcraft.item.motion_sync] at @s run function ghostcraft:logic/sync_motion
execute as @e[tag=ghostcraft.item.timer_sync] at @s run function ghostcraft:logic/sync_timer

scoreboard players remove @e[type=#ghostcraft:player] ghostcraft.ghost.boost.cooldown 1
scoreboard players remove @e[type=#ghostcraft:player] ghostcraft.item.crafting_table.invincibility 1

execute as @e[type=arrow,tag=!ghostcraft.arrow.accounted] run function ghostcraft:logic/clean_arrow

function ghostcraft:game/tick

function #ghostcraft:item/tick
