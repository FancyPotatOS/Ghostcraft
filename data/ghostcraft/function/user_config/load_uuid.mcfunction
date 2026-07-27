#
#   Load UUID
#   
#   Purpose: To insert the user's UUID into storage `ghostcraft:data macro.UUID`
#
#   Input: None
#


data modify storage ghostcraft:data macro set value {UUID:""}
data modify storage ghostcraft:data macro.UUID set from entity @s UUID

