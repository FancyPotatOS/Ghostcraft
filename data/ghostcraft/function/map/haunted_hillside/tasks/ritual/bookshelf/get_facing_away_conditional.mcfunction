#
#   Get Facing Away Conditionally
#   
#   Purpose: To get the direction facing away from the neighbouring spruce log
#
#   Input: None
#


execute if block ~1 ~ ~ minecraft:spruce_log run data modify storage ghostcraft:data chiseled_bookshelf_facing set value "west"
execute if block ~-1 ~ ~ minecraft:spruce_log run data modify storage ghostcraft:data chiseled_bookshelf_facing set value "east"
execute if block ~ ~ ~1 minecraft:spruce_log run data modify storage ghostcraft:data chiseled_bookshelf_facing set value "north"
execute if block ~ ~ ~-1 minecraft:spruce_log run data modify storage ghostcraft:data chiseled_bookshelf_facing set value "south"

