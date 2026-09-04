#
#   Interacted
#   
#   Purpose: To run logic when this player interacted with Grave
#
#   Input: None
#


execute if entity @s[tag=ghostcraft.ghost] run return 0

# Read check
execute unless score @s ghostcraft.map.haunted_hillside.tasks.ritual.parapsychology.completed matches 100.. run return run function ghostcraft:map/haunted_hillside/tasks/ritual/book/parapsychology/result/not_read

# Remove bones
clear @s minecraft:poisonous_potato[minecraft:custom_data~{ghostcraft:{type:"map.haunted_hillside.tasks.ritual.bone"}}]

# Give the bone
loot give @s loot ghostcraft:map/haunted_hillside/tasks/ritual/bone

