

# Display the message
tellraw @a {text:"The survivors should help the trucks escape the Warehouse! Looks like they need fuel and some tire changes.",italic:true,color:"gray"}

# Choose one vault location
execute as @e[type=marker,limit=1,sort=random,tag=ghostcraft.map.warehouse.vault] at @s run function ghostcraft:map/warehouse/tasks/setup_vault

execute as @e[type=marker,limit=1,sort=random,tag=ghostcraft.map.warehouse.wrench_location] at @s run function ghostcraft:map/warehouse/tasks/trucks/wrench/setup_provider

execute as @e[type=marker,limit=1,sort=random,tag=ghostcraft.map.warehouse.fuel_location] at @s run function ghostcraft:map/warehouse/tasks/trucks/fuel/setup_provider

execute as @e[type=marker,limit=1,sort=random,tag=ghostcraft.map.warehouse.tire_location] at @s run function ghostcraft:map/warehouse/tasks/trucks/tire/setup_provider

execute as @e[type=marker,limit=1,sort=random,tag=ghostcraft.map.warehouse.trucks.unfueled_car.location] at @s run function ghostcraft:map/warehouse/tasks/trucks/unfueled_car/setup

# Break tires
scoreboard players operation map.warehouse.trucks.broken_tire.count ghostcraft.temp = map.warehouse.trucks.broken_tire.count ghostcraft.config
execute as @e[type=marker,limit=4,sort=random,tag=ghostcraft.map.warehouse.trucks.broken_tire.location] at @s run function ghostcraft:map/warehouse/tasks/trucks/broken_tire/setup

