

tag @n[tag=ghostcraft.map.warehouse.trucks.unfueled_car.fueling] remove ghostcraft.map.warehouse.trucks.unfueled_car.instance
tag @n[tag=ghostcraft.map.warehouse.trucks.unfueled_car.fueling] remove ghostcraft.map.warehouse.trucks.unfueled_car.fueling

title @s actionbar {text:"The truck has been fueled.",color:white}

scoreboard players add @s ghostcraft.map.task.contributed 1

execute unless entity @n[tag=ghostcraft.map.warehouse.trucks.unfueled_car.instance] run title @s actionbar {text:"The last truck has been fueled.",color:green}
title @s title ""

function ghostcraft:map/warehouse/tasks/trucks/completion_check

