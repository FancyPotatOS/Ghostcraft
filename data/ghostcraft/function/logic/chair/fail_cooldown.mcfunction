#
#   Fail Cooldown
#   
#   Purpose: To prevent the player from mounting the chair due to cooldown
#
#   Input: None
#


tag @s remove ghostcraft.chair.target

title @s actionbar {text:"You cannot swap chairs that fast!",color:red}
title @s title ''

