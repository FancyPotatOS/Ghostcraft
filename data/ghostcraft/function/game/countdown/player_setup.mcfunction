#
#   Player Setup
#   
#   Purpose: To initialize a new player during the lobby state
#
#   Input: None
#


function ghostcraft:game/errors/new_player_joined

# Re-call this function if the phase changed, it's that phase's problem now
execute unless score phase ghostcraft.master matches 1 run function #ghostcraft:game/new_player

