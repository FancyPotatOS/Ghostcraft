#
#   On Game Stop
#   
#   Purpose: To run map-related initialization logic on game stop
#
#   Input: None
#


execute as @e[type=marker,tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.location] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/reset
execute as @e[type=marker,tag=ghostcraft.map.haunted_hillside.tasks.ritual.plant.location] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/plant/reset
execute as @e[type=marker,tag=ghostcraft.map.haunted_hillside.tasks.ritual.grave.location] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/grave/reset

