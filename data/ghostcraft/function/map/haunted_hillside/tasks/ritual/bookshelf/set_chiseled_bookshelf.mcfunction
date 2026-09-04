#
#   Set Chiseled Bookshelf
#   
#   Purpose: To set this bookshelf with randomly filled values
#
#   Input: None
#


# Randomize bookshelf
data modify storage ghostcraft:data macro set value {facing:"west",book1:"false",book2:"false",book3:"false",book4:"false",book5:"false",book6:"false"}
execute if data storage ghostcraft:data chiseled_bookshelf_facing run data modify storage ghostcraft:data macro.facing set from storage ghostcraft:data chiseled_bookshelf_facing
execute store result score rng ghostcraft.temp run random value 0..1
execute if score rng ghostcraft.temp matches 1 run data modify storage ghostcraft:data macro.book1 set value "true"
execute store result score rng ghostcraft.temp run random value 0..1
execute if score rng ghostcraft.temp matches 1 run data modify storage ghostcraft:data macro.book2 set value "true"
execute store result score rng ghostcraft.temp run random value 0..1
execute if score rng ghostcraft.temp matches 1 run data modify storage ghostcraft:data macro.book3 set value "true"
execute store result score rng ghostcraft.temp run random value 0..1
execute if score rng ghostcraft.temp matches 1 run data modify storage ghostcraft:data macro.book4 set value "true"
execute store result score rng ghostcraft.temp run random value 0..1
execute if score rng ghostcraft.temp matches 1 run data modify storage ghostcraft:data macro.book5 set value "true"
execute store result score rng ghostcraft.temp run random value 0..1
execute if score rng ghostcraft.temp matches 1 run data modify storage ghostcraft:data macro.book6 set value "true"
function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/macro/set_chiseled_bookshelf with storage ghostcraft:data macro

data remove storage ghostcraft:data chiseled_bookshelf_facing

