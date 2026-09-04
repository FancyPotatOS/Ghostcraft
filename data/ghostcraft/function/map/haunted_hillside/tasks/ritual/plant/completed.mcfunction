#
#   Completed Flowers
#   
#   Purpose: To run the logic when a player completes all flowers
#
#   Input: None
#


# Remove flowers
clear @s minecraft:poisonous_potato[minecraft:custom_data~{ghostcraft:{type:"map.haunted_hillside.tasks.ritual.plant"}}]

tag @s add ghostcraft.map.haunted_hillside.tasks.ritual.herbalist

# Grammar check
scoreboard players set count ghostcraft.temp 0
execute as @a[tag=ghostcraft.map.haunted_hillside.tasks.ritual.herbalist] run scoreboard players add count ghostcraft.temp 1

execute if score count ghostcraft.temp matches 1 run title @a actionbar [{selector:"@p[tag=ghostcraft.map.haunted_hillside.tasks.ritual.herbalist]",color:green},{text:" has completed the Herbalist task!"}]
execute if score count ghostcraft.temp matches 2.. run title @a actionbar [{selector:"@a[tag=ghostcraft.map.haunted_hillside.tasks.ritual.herbalist]",color:green},{text:" have completed the Herbalist task!"}]

execute unless entity @e[tag=ghostcraft.map.haunted_hillside.tasks.ritual.parapsychologist] run tellraw @a[tag=ghostcraft.survivor] {text:"Finish the Parapsychologist task to continue",color:gray,italic:true}

title @s subtitle ''
title @s title ''

