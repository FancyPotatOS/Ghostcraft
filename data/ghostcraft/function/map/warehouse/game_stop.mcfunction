

execute as @e[type=marker,tag=ghostcraft.map.warehouse] run function ghostcraft:map/warehouse/marker_reset

execute as @e[type=marker,tag=ghostcraft.map.warehouse.replaceable_block] at @s run function ghostcraft:map/warehouse/tasks/block_reset

scoreboard players set map.warehouse.task.id ghostcraft.temp 0
scoreboard players set map.warehouse.brewing_stand.completed ghostcraft.temp 0

