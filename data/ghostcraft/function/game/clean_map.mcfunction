#
#   Clean Map
#   
#   Purpose: To clean the entire map of any stray blocks, items, or entities
#
#   Input: None
#


# Clean the map of remaining stuff
execute in ghostcraft:empty run function #ghostcraft:game/clean_map

execute in ghostcraft:empty run kill @e[type=item,distance=..1000000]

