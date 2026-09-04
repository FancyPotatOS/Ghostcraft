#
#   Bookshelf Setup
#   
#   Purpose: To setup this entity/location as a bookshelf
#
#   Input: None
#


# Add tags
tag @s add ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.chosen

execute if entity @s[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.single_bookshelf] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/single_bookshelf/setup
execute if entity @s[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.nightstand] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/nightstand/setup
execute if entity @s[tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.tall_bookshelf] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/tall_bookshelf/setup

