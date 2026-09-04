#
#   Bookshelf Setup
#   
#   Purpose: To setup this entity/location as a bookshelf
#
#   Input: None
#


# Clear tags
tag @s remove ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.chosen

execute if entity @s[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.single_bookshelf] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/single_bookshelf/reset
execute if entity @s[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.nightstand] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/nightstand/reset
execute if entity @s[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.tall_bookshelf] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/tall_bookshelf/reset

