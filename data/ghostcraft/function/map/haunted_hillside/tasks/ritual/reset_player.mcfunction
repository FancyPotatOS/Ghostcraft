#
#   Reset Player
#   
#   Purpose: To reset all player data that might be carried over in some case
#
#   Input: None
#


tag @s remove ghostcraft.map.haunted_hillside.tasks.ritual.book.studied_herbalist
tag @s remove ghostcraft.map.haunted_hillside.tasks.ritual.book.studied_parapsychology
tag @s remove ghostcraft.map.haunted_hillside.tasks.ritual.herbalist
tag @s remove ghostcraft.map.haunted_hillside.tasks.ritual.parapsychologist

scoreboard players set @s ghostcraft.map.haunted_hillside.tasks.ritual.herbalist.completed 0
scoreboard players set @s ghostcraft.map.haunted_hillside.tasks.ritual.parapsychology.completed 0

