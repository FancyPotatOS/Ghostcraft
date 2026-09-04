#
#   Give
#   
#   Purpose: To give this book back if the player's tagged appropriately
#
#   Input: None
#


clear @s minecraft:poisonous_potato[minecraft:custom_data~{ghostcraft:{subtype:"parapsychology"}}]
clear @s minecraft:poisonous_potato[minecraft:custom_data~{ghostcraft:{subtype:"parapsychology_fake"}}]
loot give @s loot ghostcraft:map/haunted_hillside/tasks/ritual/parapsychology_book
tag @s remove ghostcraft.map.haunted_hillside.tasks.ritual.book.give_parapsychology

