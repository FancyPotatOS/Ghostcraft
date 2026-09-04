#
#   Reset
#   
#   Purpose: To reset this entity/location as the appropriate block
#
#   Input: None
#


fill ~ ~ ~ ~ ~2 ~ air
function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/set_stairs_towards_conditional

# Kill bookshelf interaction entity
kill @e[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.interaction]

