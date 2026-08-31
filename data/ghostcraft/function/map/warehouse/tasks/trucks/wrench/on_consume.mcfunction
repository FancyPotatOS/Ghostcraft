

# Early fail
execute unless entity @e[type=marker,tag=ghostcraft.map.warehouse.trucks.broken_tire.location,distance=..2] run return run function ghostcraft:map/warehouse/tasks/trucks/wrench/consume/failure_no_tire
execute unless entity @e[type=marker,tag=ghostcraft.map.warehouse.trucks.broken_tire.broken_tire,distance=..2] run return run function ghostcraft:map/warehouse/tasks/trucks/wrench/consume/failure_no_missing_tire

# Tag this entity
tag @s add ghostcraft.map.warehouse.trucks.broken_tire.user

# Remove nearest broken tire
execute as @e[type=marker,tag=ghostcraft.map.warehouse.trucks.broken_tire.broken_tire,limit=1,sort=nearest,distance=..2] run tag @s add ghostcraft.map.warehouse.trucks.broken_tire.broken_tire.removing
execute as @n[tag=ghostcraft.map.warehouse.trucks.broken_tire.broken_tire.removing] if entity @s at @s run function ghostcraft:map/warehouse/tasks/trucks/wrench/remove_nearest_tire

# Clean up tag
tag @s remove ghostcraft.map.warehouse.trucks.broken_tire.user

