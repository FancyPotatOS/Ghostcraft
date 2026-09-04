#
#   Using Book
#   
#   Purpose: To tag this player based on what book they're reading
#
#   Input: None
#


execute if entity @s[tag=ghostcraft.ghost] run return 0

# Clear tags to determine which
function ghostcraft:map/haunted_hillside/tasks/ritual/book/herbalist/remove_tag
function ghostcraft:map/haunted_hillside/tasks/ritual/book/parapsychology/remove_tag

execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{ghostcraft:{type:"map.haunted_hillside.tasks.ritual.book"}}] run function ghostcraft:map/haunted_hillside/tasks/ritual/book/using_mainhand
execute if items entity @s weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{ghostcraft:{type:"map.haunted_hillside.tasks.ritual.book"}}] run function ghostcraft:map/haunted_hillside/tasks/ritual/book/using_offhand

