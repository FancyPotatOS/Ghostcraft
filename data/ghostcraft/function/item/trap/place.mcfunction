#
#   Place Trap
#   
#   Purpose: To setup the trap
#
#   Input: None
#


summon marker ~ ~ ~ {Tags:["ghostcraft.item.trap"]}
playsound minecraft:block.wooden_door.open block @p[tag=ghostcraft.trap.trapper] ~ ~ ~ 2 0.2 0.5
particle end_rod ~ ~ ~ 0 0.2 0 0 2 force

