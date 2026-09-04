#
#   Set Dark Oak Stairs Conditionally
#   
#   Purpose: To set this block as dark oak stairs, facing away from the spruce log
#
#   Input: None
#


execute if block ~1 ~ ~ minecraft:spruce_log run setblock ~ ~ ~ minecraft:dark_oak_stairs[facing=east]
execute if block ~-1 ~ ~ minecraft:spruce_log run setblock ~ ~ ~ minecraft:dark_oak_stairs[facing=west]
execute if block ~ ~ ~1 minecraft:spruce_log run setblock ~ ~ ~ minecraft:dark_oak_stairs[facing=north]
execute if block ~ ~ ~-1 minecraft:spruce_log run setblock ~ ~ ~ minecraft:dark_oak_stairs[facing=south]

