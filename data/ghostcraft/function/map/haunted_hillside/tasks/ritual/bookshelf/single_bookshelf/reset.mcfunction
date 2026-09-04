#
#   Reset
#   
#   Purpose: To reset this entity/location as the appropriate block
#
#   Input: None
#


setblock ~ ~ ~ minecraft:bookshelf

# Kill bookshelf interaction entity
kill @e[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction]

