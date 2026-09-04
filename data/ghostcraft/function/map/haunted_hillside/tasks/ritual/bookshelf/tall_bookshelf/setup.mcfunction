#
#   Setup
#   
#   Purpose: To setup this entity/location as the appropriate type
#
#   Input: None
#


execute store result score highest ghostcraft.temp run random value 0..1

fill ~ ~ ~ ~ ~1 ~ minecraft:bookshelf
execute positioned ~ ~2 ~ run function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/set_stairs_away_conditional

function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/get_facing_away_conditional
execute if score highest ghostcraft.temp matches 0 run function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/set_chiseled_bookshelf
execute if score highest ghostcraft.temp matches 1 positioned ~ ~1 ~ run function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/set_chiseled_bookshelf

execute if score highest ghostcraft.temp matches 0 align xyz run summon minecraft:interaction ~0.5 ~-0.005 ~0.5 {Tags:[ghostcraft.map,ghostcraft.map.interaction,ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction,ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction.new],width:1.01,height:1.01,response:true}
execute if score highest ghostcraft.temp matches 1 align xyz positioned ~ ~1 ~ run summon minecraft:interaction ~0.5 ~-0.005 ~0.5 {Tags:[ghostcraft.map,ghostcraft.map.interaction,ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction,ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction.new],width:1.01,height:1.01,response:true}

# Add type tag
execute as @n[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction.new] if score target_book ghostcraft.temp matches 0 run tag @s add ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.herbalist
execute as @n[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction.new] if score target_book ghostcraft.temp matches 1 run tag @s add ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.parapsychology

tag @e[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction.new] remove ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction.new

