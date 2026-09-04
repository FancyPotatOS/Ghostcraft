#
#   On Use
#   
#   Purpose: To run logic when a bone is being used
#
#   Input: None
#


execute if entity @s[tag=ghostcraft.ghost] run return 0

# execute if score map.haunted_hillside.ritual.completed ghostcraft.temp matches 1 run return run function ghostcraft:map/haunted_hillside/tasks/ritual/bone/results/already_completed
execute unless entity @e[tag=ghostcraft.map.haunted_hillside.tasks.ritual.herbalist] run return run function ghostcraft:map/haunted_hillside/tasks/ritual/bone/results/no_herbalist
execute unless entity @e[type=marker,tag=ghostcraft.map.haunted_hillside.tasks.ritual.tallest_tree,distance=..7] run return run function ghostcraft:map/haunted_hillside/tasks/ritual/bone/results/too_far

particle minecraft:enchant ~ ~1 ~ 1.5 1.5 1.5 0.05 4 force

