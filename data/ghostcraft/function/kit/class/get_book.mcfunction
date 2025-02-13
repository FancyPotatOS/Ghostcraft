#
#   Get Class Book
#   
#   Purpose: To provide a book that has all the class details and selection on it
#
#   Input: None
#


summon armor_stand ~ ~ ~ {equipment:{mainhand:{id:"minecraft:written_book",components:{"written_book_content":{"author":"FancyPotatOS",title:"Classes",pages:[]}}}},Invisible:1b,NoGravity:1b,NoAI:1b,Tags:["ghostcraft.kit.class.get_book.temp"]}

execute as @e[tag=ghostcraft.kit.class.get_book.temp] run function #ghostcraft:kit/book_insert

item replace entity @s hotbar.0 from entity @e[tag=ghostcraft.kit.class.get_book.temp,limit=1] weapon.mainhand

kill @e[tag=ghostcraft.kit.class.get_book.temp]
