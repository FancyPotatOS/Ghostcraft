#
#   Map Exists
#   
#   Purpose: To check if there is a map under the score 'voted_map ghostcraft.temp'
#
#   Input: None
#


scoreboard players set map_exists ghostcraft.temp 0

function #ghostcraft:map/compare_id

execute if score map_exists ghostcraft.temp matches 0 run return fail

return 1

