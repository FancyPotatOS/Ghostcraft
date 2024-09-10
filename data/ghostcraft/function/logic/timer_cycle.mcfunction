
scoreboard players operation @s ghostcraft.temp = @s ghostcraft.timer
scoreboard players operation @s ghostcraft.temp += @s ghostcraft.timer_cycle_offset
scoreboard players operation @s ghostcraft.temp %= @s ghostcraft.timer_cycle

execute if score @s ghostcraft.temp matches 0 run function #ghostcraft:item/timer_cycle_trigger
