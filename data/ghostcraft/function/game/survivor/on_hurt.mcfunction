#
#   Survivor On Hurt Effect
#   
#   Purpose: To make the current player display the survivor hurt effect
#
#   Input: None
#


particle minecraft:block{block_state:"minecraft:lava"} ~ ~1 ~ 0.05 0.5 0.05 1 50 force @a[tag=!effect.player.hurt_effect.invisible]

