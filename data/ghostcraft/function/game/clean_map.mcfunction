#
#   Clean Map
#   
#   Purpose: To clean the entire map of any stray blocks, items, or entities
#
#   Input: None
#


# Clean the map of remaining stuff
function #ghostcraft:game/clean_map

kill @e[type=#ghostcraft:map_clearable,distance=..1000000]

