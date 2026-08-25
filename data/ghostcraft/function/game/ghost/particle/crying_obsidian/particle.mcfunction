#
#   Ghost Crying Obsidian On Hurt Effect
#   
#   Purpose: To make the current player display the ghost hurt effect
#
#   Input: None
#


# ID check
execute unless score @s effect.ghost.hurt_effect matches 1 run return 0

particle minecraft:block{block_state:"minecraft:crying_obsidian"} ~ ~1 ~ 0.05 0.5 0.05 1 50 force @a[tag=!effect.ghost.hurt_effect.invisible]
tag @s remove effect.ghost.hurt_effect.particle.unplayed

