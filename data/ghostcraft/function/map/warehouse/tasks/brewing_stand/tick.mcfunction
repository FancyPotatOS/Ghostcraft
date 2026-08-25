

execute as @e[type=marker,tag=ghostcraft.map.warehouse.brewing_stand.agitated] at @s run function ghostcraft:map/warehouse/tasks/brewing_stand/agitation/tick
execute as @e[type=interaction,tag=ghostcraft.map.warehouse.tasks.brewing_stand.supplier] at @s run function ghostcraft:map/warehouse/tasks/brewing_stand/supplier/effect

execute if score map.warehouse.brewing_stand.completed ghostcraft.temp matches 0 unless entity @e[type=marker,tag=ghostcraft.map.warehouse.brewing_stand.agitated] run function ghostcraft:map/warehouse/tasks/brewing_stand/completed

