

# This entity was the one that would be fueled
execute as @e[type=marker,tag=ghostcraft.map.warehouse.trucks.unfueled_car.instance,distance=..4,limit=1] run tag @s add ghostcraft.map.warehouse.trucks.unfueled_car.fueling

# Fail condition
execute unless entity @n[tag=ghostcraft.map.warehouse.trucks.unfueled_car.fueling] run return run function ghostcraft:map/warehouse/tasks/trucks/fuel/consume/failure

# Completion check
function ghostcraft:map/warehouse/tasks/trucks/fuel/consume/success

