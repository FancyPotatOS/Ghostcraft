#
#   Get Nth Item
#   
#   Purpose: To get this player's configured nth ghost choice
#
#   Input: {index: int}
#


$data modify storage ghostcraft:data choice set from storage ghostcraft:data current_user.ghost.choices[$(index)]

