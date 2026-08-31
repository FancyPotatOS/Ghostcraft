

# Early failure
execute unless predicate ghostcraft:map/warehouse/tasks/trucks/has_wrench run return run function ghostcraft:map/warehouse/tasks/trucks/tire/consume/failure_no_wrench
execute unless entity @n[tag=ghostcraft.map.warehouse.trucks.broken_tire.instance] run return run function ghostcraft:map/warehouse/tasks/trucks/tire/consume/failure_no_tire_needed

# Tag this entity
tag @s add ghostcraft.map.warehouse.trucks.tire.user

# Place into nearest missing tire (or no nearby truck)
execute as @e[type=marker,tag=ghostcraft.map.warehouse.trucks.broken_tire.missing_tire,limit=1,sort=nearest,distance=..3] run tag @s add ghostcraft.map.warehouse.trucks.broken_tire.missing_tire.adding
execute unless entity @n[tag=ghostcraft.map.warehouse.trucks.broken_tire.missing_tire.adding] run return run function ghostcraft:map/warehouse/tasks/trucks/tire/consume/failure_no_truck
execute as @n[tag=ghostcraft.map.warehouse.trucks.broken_tire.missing_tire.adding] at @s run return run function ghostcraft:map/warehouse/tasks/trucks/tire/add_missing_tire

# Clean up tag
tag @s remove ghostcraft.map.warehouse.trucks.tire.user

# Tire was not used
loot give @s loot ghostcraft:map/warehouse/tasks/trucks/tire

