#
#   Initialize
#   
#   Purpose: To initialize this item's ownership data
#
#   Input: None
#


tag @s add ghostcraft.game.ghosthunt.item_ownership.accounted
execute store result score @s ghostcraft.uuid run data get entity @s Thrower[0]

