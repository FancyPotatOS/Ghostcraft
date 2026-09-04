#
#   Interacted
#   
#   Purpose: To run logic when this player interacted with an herbalist Interaction entity
#
#   Input: None
#


execute if entity @s[tag=ghostcraft.ghost] run return 0

tag @s add ghostcraft.map.haunted_hillside.tasks.ritual.book.give_herbalist

