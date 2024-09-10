#
#   Ghost Effect
#   
#   Purpose: To make the current player display the ghost effect
#
#   Input: None
#


execute if score effect.ambient_ghost.particles ghostcraft.config matches 0 run particle minecraft:smoke ~ ~ ~ 0.05 1 0.05 0 20 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]

