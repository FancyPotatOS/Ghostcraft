#
#   Give
#   
#   Purpose: To give this book back if the player's tagged appropriately
#
#   Input: None
#


clear @s minecraft:poisonous_potato[minecraft:custom_data~{ghostcraft:{subtype:"herbalist"}}]
clear @s minecraft:poisonous_potato[minecraft:custom_data~{ghostcraft:{subtype:"herbalist_fake"}}]
loot give @s loot ghostcraft:map/haunted_hillside/tasks/ritual/herbalist_book
tag @s remove ghostcraft.map.haunted_hillside.tasks.ritual.book.give_herbalist

