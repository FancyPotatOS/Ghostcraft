#
#   Update Gravity Balance
#   
#   Purpose: To update this player's gravity attribute
#
#   Input: {gravity: double}
#


attribute @s minecraft:gravity modifier remove ghostcraft.ability.cling.balance
# $say $(gravity)
$attribute @s minecraft:gravity modifier add ghostcraft.ability.cling.balance $(gravity) add_value

