#
#   Initialize
#   
#   Purpose: To initialize this item's ownership data
#
#   Input: None
#


execute if predicate ghostcraft:game/ghosthunt/item_ownership/is_exempt run return run tag @s add ghostcraft.game.ghosthunt.item_ownership.excepted

tag @s add ghostcraft.game.ghosthunt.item_ownership.accounted

execute store result score @s ghostcraft.uuid run data get entity @s Thrower[0]

