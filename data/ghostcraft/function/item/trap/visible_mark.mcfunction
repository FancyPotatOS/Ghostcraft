#
#   Hit Block
#   
#   Purpose: To test whether should set a trap due to the player hitting a block
#
#   Input: None
#


particle end_rod ~ ~ ~ 0 0.2 0 0 2 force
playsound minecraft:block.piston.contract block @a[distance=..20] ~ ~ ~ 1.5 0.1 0.5

