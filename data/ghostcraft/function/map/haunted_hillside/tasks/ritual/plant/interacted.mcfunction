#
#   Interacted
#   
#   Purpose: To run logic when this player interacted with plant
#
#   Input: None
#


execute if entity @s[tag=ghostcraft.ghost] run return 0

# Read check
execute unless score @s ghostcraft.map.haunted_hillside.tasks.ritual.herbalist.completed matches 100.. run return run function ghostcraft:map/haunted_hillside/tasks/ritual/book/herbalist/result/not_read

# Get plant id
execute store result score plant ghostcraft.temp run data get entity @n[type=marker,tag=ghostcraft.map.haunted_hillside.tasks.ritual.plant.location] data.plant_id
scoreboard players add plant ghostcraft.temp 1

# Clear this flow item then provide macro item-modified loot table
data modify storage ghostcraft:data macro set value {plant_id:100000,required_plants:100000}
execute store result storage ghostcraft:data macro.plant_id int 1 run scoreboard players get plant ghostcraft.temp
execute store result storage ghostcraft:data macro.required_plants int 1 run scoreboard players get map.haunted_hillside.tasks.ritual.plant.required ghostcraft.config
function ghostcraft:map/haunted_hillside/tasks/ritual/plant/macro/clear_plant with storage ghostcraft:data macro
function ghostcraft:map/haunted_hillside/tasks/ritual/plant/macro/loot_table_modified with storage ghostcraft:data macro

