#
#   Trap Tick
#   
#   Purpose: To update any traps
#
#   Input: None
#


execute as @e[type=#ghostcraft:player,tag=ghostcraft.survivor] at @s if entity @e[type=marker,tag=ghostcraft.item.trap,distance=..1] run function ghostcraft:item/trap/activate/survivor

execute as @e[type=#ghostcraft:player,tag=ghostcraft.ghost] at @s if entity @e[type=marker,tag=ghostcraft.item.trap,distance=..1] run function ghostcraft:item/trap/activate/ghost

# Remove all stepped entities that aren't stepping on one anymore
execute as @e[type=#ghostcraft:player,tag=ghostcraft.item.trap.stepped,tag=!ghostcraft.item.trap.stepped.current] run tag @s remove ghostcraft.item.trap.stepped

tag @e[type=#ghostcraft:player] remove ghostcraft.item.trap.stepped.current

