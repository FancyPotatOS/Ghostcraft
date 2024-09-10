#
#   Cooldown Failure
#   
#   Purpose: To show that the map can't be changed because the cooldown is still up
#
#   Input: None
#


tellraw @a [{"text":"Can't change the map because it's still under cooldown."}]
function ghostcraft:game/map_change/to_lobby

