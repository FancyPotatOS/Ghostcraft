#
#   To Offhand
#   
#   Purpose: To swap hands of offhand and mainhand
#
#   Input: None
#


item replace entity @s player.crafting.0 from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s player.crafting.0

item replace entity @s player.crafting.0 with minecraft:air

