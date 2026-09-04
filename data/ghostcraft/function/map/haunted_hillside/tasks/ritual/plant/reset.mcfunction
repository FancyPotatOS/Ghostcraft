#
#   Plant Setup
#   
#   Purpose: To setup this entity/location as a plant
#
#   Input: None
#


# Clear tags
tag @s remove ghostcraft.map.haunted_hillside.tasks.ritual.plant.chosen
data remove entity @s data.plant_id

kill @e[tag=ghostcraft.map.haunted_hillside.tasks.ritual.plant.interaction]
kill @e[tag=ghostcraft.map.haunted_hillside.tasks.ritual.plant.block_display]

