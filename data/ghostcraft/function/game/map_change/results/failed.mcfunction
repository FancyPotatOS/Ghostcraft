#
#   Vote Failed
#   
#   Purpose: To demonstrate that a vote failed and return to the lobby
#
#   Input: None
#


tellraw @a [{"text":"The vote failed! Unknown map chosen from "},{"selector": "@a[tag=ghostcraft.game.map_change.calculate_vote.winner,limit=1]"}]
tag @a remove ghostcraft.game.map_change.calculate_vote.winner

scoreboard players set coming_from_lobby ghostcraft.temp 1
function ghostcraft:game/map_change/to_lobby
scoreboard players reset coming_from_lobby ghostcraft.temp

