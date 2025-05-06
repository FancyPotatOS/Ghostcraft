#
#   Not Enough Energy
#   
#   Purpose: To inform the player that they do not have enough energy
#
#   Input: None
#


title @s actionbar {"text":"You do not have enough energy to cling."}
title @s title ''
function ghostcraft:ability/cling/disengage
tag @s add ghostcraft.ability.cling.burnt_out

