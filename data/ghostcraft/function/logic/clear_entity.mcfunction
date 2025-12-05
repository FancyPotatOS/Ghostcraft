#
#   Clear Entity
#   
#   Purpose: To clear this entity of all items
#
#   Input: None
#


clear @s
data remove entity @s equipment
data remove entity @s Inventory

dialog clear @s

function #ghostcraft:player/reset

