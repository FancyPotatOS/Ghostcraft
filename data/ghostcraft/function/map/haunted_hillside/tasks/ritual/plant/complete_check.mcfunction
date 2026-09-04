#
#   Complete Check
#   
#   Purpose: To check if this player completed the flowers
#
#   Input: None
#


# Reset counter
scoreboard players set completed_plants ghostcraft.temp 0

# Hotbar
execute store result score slot_plants ghostcraft.temp if items entity @s hotbar.* minecraft:poisonous_potato[minecraft:custom_data~{ghostcraft:{type:"map.haunted_hillside.tasks.ritual.plant"}}]
scoreboard players operation completed_plants ghostcraft.temp += slot_plants ghostcraft.temp

# Inventory
execute store result score slot_plants ghostcraft.temp if items entity @s inventory.* minecraft:poisonous_potato[minecraft:custom_data~{ghostcraft:{type:"map.haunted_hillside.tasks.ritual.plant"}}]
scoreboard players operation completed_plants ghostcraft.temp += slot_plants ghostcraft.temp

# Offhand
execute store result score slot_plants ghostcraft.temp if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{ghostcraft:{type:"map.haunted_hillside.tasks.ritual.plant"}}]
scoreboard players operation completed_plants ghostcraft.temp += slot_plants ghostcraft.temp

execute if score completed_plants ghostcraft.temp = map.haunted_hillside.tasks.ritual.plant.required ghostcraft.config run function ghostcraft:map/haunted_hillside/tasks/ritual/plant/completed

