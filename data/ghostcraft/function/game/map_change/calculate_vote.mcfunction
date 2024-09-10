#
#   Calculate Vote
#   
#   Purpose: To check the results of the vote and proceed to update it
#
#   Input: None
#


execute as @a[scores={ghostcraft.game.map_change.vote=1..},sort=random] run tag @s add ghostcraft.game.map_change.calculate_vote.winner

execute unless entity @a[tag=ghostcraft.game.map_change.calculate_vote.winner] run return run function ghostcraft:game/map_change/results/no_votes

scoreboard players operation target_map ghostcraft.temp = @a[tag=ghostcraft.game.map_change.calculate_vote.winner,limit=1] ghostcraft.game.map_change.vote
execute unless function ghostcraft:map/exists as @a[tag=ghostcraft.game.map_change.calculate_vote.winner,limit=1] run return run function ghostcraft:game/map_change/results/failed

execute if score @a[tag=ghostcraft.game.map_change.calculate_vote.winner,limit=1] ghostcraft.game.map_change.vote = map ghostcraft.config as @a[tag=ghostcraft.game.map_change.calculate_vote.winner,limit=1] run return run function ghostcraft:game/map_change/results/unchanged

tellraw @a [{"selector": "@a[tag=ghostcraft.game.map_change.calculate_vote.winner,limit=1]"},{"text":" won the vote!"}]
function ghostcraft:game/map_change/to_lobby

clear @a

scoreboard players operation map ghostcraft.config = target_map ghostcraft.temp

effect give @a slow_falling 20 10 true

function #ghostcraft:map/display_set

tellraw @a [{"text":"Please wait while the new map is being loaded...","italic": true,"color":"red"}]

function ghostcraft:map/refresh

tag @a remove ghostcraft.game.map_change.calculate_vote.winner
schedule function ghostcraft:game/map_change/to_lobby 141t

