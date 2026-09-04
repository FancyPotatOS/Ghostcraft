

# Included because we accidentally double-upped a chair interaction entity. Oops!

scoreboard players set chair_count ghostcraft.temp 0
execute as @e[type=minecraft:interaction,distance=..1] run scoreboard players add chair_count ghostcraft.temp 1
execute if score chair_count ghostcraft.temp matches 2.. run kill @e[type=minecraft:interaction,distance=..1,sort=furthest,limit=1]
execute if score chair_count ghostcraft.temp matches 2.. run function ghostcraft:map/haunted_hillside/chair_integrity

