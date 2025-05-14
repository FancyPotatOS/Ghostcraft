#
#   Tick
#   
#   Purpose: To update all items for item ownership
#
#   Input: None
#


# Account for all items
execute as @e[type=item,tag=!ghostcraft.game.ghosthunt.item_ownership.accounted] unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.excepted] run function ghostcraft:game/ghosthunt/item_ownership/initialize
# If not accounted by now, it's an exception
execute as @e[type=item,tag=!ghostcraft.game.ghosthunt.item_ownership.accounted] run tag @s add ghostcraft.game.ghosthunt.item_ownership.excepted
execute as @e[type=item,tag=!ghostcraft.game.ghosthunt.item_ownership.excepted] at @s run function ghostcraft:game/ghosthunt/item_ownership/update

