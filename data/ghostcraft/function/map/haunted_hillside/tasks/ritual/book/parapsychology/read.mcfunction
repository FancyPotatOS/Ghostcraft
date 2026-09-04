#
#   Read
#   
#   Purpose: To add to the reading score and tell player the progress
#
#   Input: None
#


execute unless entity @s[tag=ghostcraft.map.haunted_hillside.tasks.ritual.book.studied_parapsychology] run return 0

# Return the book
tag @s add ghostcraft.map.haunted_hillside.tasks.ritual.book.give_parapsychology

execute if score @s ghostcraft.map.haunted_hillside.tasks.ritual.parapsychology.completed matches ..99 run tag @s add ghostcraft.map.haunted_hillside.tasks.ritual.book.unfinished

scoreboard players operation @s ghostcraft.map.haunted_hillside.tasks.ritual.parapsychology.completed += map.haunted_hillside.tasks.ritual.grave.base_read_bonus ghostcraft.config
execute if entity @s[tag=ghostcraft.chair.sitting] run scoreboard players operation @s ghostcraft.map.haunted_hillside.tasks.ritual.parapsychology.completed += map.haunted_hillside.tasks.ritual.grave.sitting_read_bonus ghostcraft.config
execute if score @s ghostcraft.map.haunted_hillside.tasks.ritual.parapsychology.completed matches 101.. run scoreboard players set @s ghostcraft.map.haunted_hillside.tasks.ritual.parapsychology.completed 100

function ghostcraft:map/haunted_hillside/tasks/ritual/book/parapsychology/tell_progress

execute if entity @s[tag=ghostcraft.map.haunted_hillside.tasks.ritual.book.unfinished] run function ghostcraft:map/haunted_hillside/tasks/ritual/book/read_successful

tag @s remove ghostcraft.map.haunted_hillside.tasks.ritual.book.unfinished

# Remove reading tag now
function ghostcraft:map/haunted_hillside/tasks/ritual/book/parapsychology/remove_tag

