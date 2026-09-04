#
#   Setup
#   
#   Purpose: To setup this entity/location as the appropriate type
#
#   Input: None
#


data modify storage ghostcraft:data chiseled_bookshelf_facing set value "west"
function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/set_chiseled_bookshelf

execute align xyz run summon minecraft:interaction ~0.5 ~-0.005 ~0.5 {Tags:[ghostcraft.map,ghostcraft.map.interaction,ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction,ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction.new],width:1.01,height:1.01,response:true}

# Add type tag
execute as @n[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction.new] at @s if score target_book ghostcraft.temp matches 0 run tag @s add ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.herbalist
execute as @n[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction.new] at @s if score target_book ghostcraft.temp matches 1 run tag @s add ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.parapsychology

tag @e[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction.new] remove ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction.new

