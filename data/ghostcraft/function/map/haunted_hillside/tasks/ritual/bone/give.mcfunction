#
#   Give
#   
#   Purpose: To give this book back if the player's tagged appropriately
#
#   Input: None
#


clear @s minecraft:poisonous_potato[minecraft:custom_data~{ghostcraft:{type:"map.haunted_hillside.tasks.ritual.bone"}}]
clear @s minecraft:poisonous_potato[minecraft:custom_data~{ghostcraft:{type:"map.haunted_hillside.tasks.ritual.bone_fake"}}]
loot give @s loot ghostcraft:map/haunted_hillside/tasks/ritual/bone
tag @s remove ghostcraft.map.haunted_hillside.tasks.ritual.bone.give_bone

