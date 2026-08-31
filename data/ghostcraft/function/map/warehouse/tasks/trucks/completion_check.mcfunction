

# Goal marker check
execute if entity @e[type=marker,tag=ghostcraft.map.warehouse.trucks.broken_tire.instance] run return 0
execute if entity @e[type=marker,tag=ghostcraft.map.warehouse.trucks.unfueled_car.instance] run return 0

function ghostcraft:map/warehouse/tasks/trucks/completed

