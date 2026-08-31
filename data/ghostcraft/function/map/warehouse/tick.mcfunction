

# 1 = brewing stand agitation
execute if score map.warehouse.task.id ghostcraft.temp matches 1 run function ghostcraft:map/warehouse/tasks/brewing_stand/tick
execute if score map.warehouse.task.id ghostcraft.temp matches 2 run function ghostcraft:map/warehouse/tasks/trucks/tick

execute as @e[type=item,tag=ghostcraft.map.warehouse.no_age] run data modify entity @s Age set value 10

