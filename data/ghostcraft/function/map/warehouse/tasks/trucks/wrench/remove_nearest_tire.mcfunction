

# Change tag over
tag @s add ghostcraft.map.warehouse.trucks.broken_tire.missing_tire
tag @s remove ghostcraft.map.warehouse.trucks.broken_tire.broken_tire
tag @s remove ghostcraft.map.warehouse.trucks.broken_tire.broken_tire.removing

# Tell player
title @p[tag=ghostcraft.map.warehouse.trucks.broken_tire.user] actionbar {text:"The broken tire has been removed.",color:white}
title @p[tag=ghostcraft.map.warehouse.trucks.broken_tire.user] subtitle ""
title @p[tag=ghostcraft.map.warehouse.trucks.broken_tire.user] title ""

scoreboard players add @p[tag=ghostcraft.map.warehouse.trucks.broken_tire.user] ghostcraft.map.task.contributed 1

# Replace with air
fill ~ ~ ~-1 ~ ~ ~1 air replace minecraft:blackstone_stairs

