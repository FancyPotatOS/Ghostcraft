

# Config of max tires to do
scoreboard players remove map.warehouse.trucks.broken_tire.count ghostcraft.temp 1
execute if score map.warehouse.trucks.broken_tire.count ghostcraft.temp matches ..-1 run return 0

tag @s add ghostcraft.map.warehouse.trucks.broken_tire.instance
tag @s add ghostcraft.map.warehouse.trucks.broken_tire.broken_tire

fill ~ ~ ~ ~ ~ ~ minecraft:blackstone_stairs[facing=west,half=bottom] replace minecraft:chiseled_polished_blackstone
fill ~ ~ ~ ~ ~ ~1 minecraft:blackstone_stairs[facing=north,half=bottom] replace minecraft:chiseled_polished_blackstone
fill ~ ~ ~ ~ ~ ~-1 minecraft:blackstone_stairs[facing=south,half=bottom] replace minecraft:chiseled_polished_blackstone

fill ~ ~ ~ ~ ~ ~ minecraft:blackstone_stairs[facing=west,half=bottom] replace minecraft:air
fill ~ ~ ~ ~ ~ ~1 minecraft:blackstone_stairs[facing=north,half=bottom] replace minecraft:air
fill ~ ~ ~ ~ ~ ~-1 minecraft:blackstone_stairs[facing=south,half=bottom] replace minecraft:air

