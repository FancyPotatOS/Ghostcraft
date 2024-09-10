#
#   Vote Unchanged
#   
#   Purpose: To demonstrate that the map is unchanged
#
#   Input: None
#


tellraw @a [{"selector": "@a[tag=ghostcraft.game.map_change.calculate_vote.winner,limit=1]"},{"text":" won the vote! The map will remain unchanged."}]
tag @a remove ghostcraft.game.map_change.calculate_vote.winner
scoreboard players set coming_from_lobby ghostcraft.temp 1
function ghostcraft:game/map_change/to_lobby
scoreboard players reset coming_from_lobby ghostcraft.temp

