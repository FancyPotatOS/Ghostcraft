#
#   Vote Unchanged
#   
#   Purpose: To demonstrate that the map is unchanged
#
#   Input: None
#


tellraw @a [{"text":"No votes have been made. The map will remain unchanged."}]
scoreboard players set coming_from_lobby ghostcraft.temp 1
function ghostcraft:game/map_change/to_lobby
scoreboard players reset coming_from_lobby ghostcraft.temp

