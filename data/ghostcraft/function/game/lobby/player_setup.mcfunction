#
#   Player Setup
#   
#   Purpose: To initialize a new player during the lobby state
#
#   Input: None
#


team join ghostcraft.lobby @s

execute unless score coming_from_lobby ghostcraft.temp matches 1 run function ghostcraft:game/player_reset

attribute @s minecraft:attack_damage modifier add ghostcraft.game.lobby.player -10000 add_value

effect give @s saturation infinite 4 true
effect give @s instant_health infinite 4 true
effect give @s resistance infinite 4 true

experience set @s 0 levels
experience set @s 0 points

execute store result score y ghostcraft.temp run data get entity @s Pos[1]
execute in ghostcraft:empty if score y ghostcraft.temp matches ..0 run tp ~ 125 ~

# Only continue execution if not coming from lobby
execute if score coming_from_lobby ghostcraft.temp matches 1 run return 0

give @s stone_button 1
function ghostcraft:game/lobby/get_controls
clear @s stone_button
function ghostcraft:kit/class/get_book

# Teleport all players to a random lobby entity
tp @s @e[tag=ghostcraft.map.lobby,limit=1,sort=random]

function ghostcraft:ability/feather_falling/grant
execute if entity @e[tag=ghostcraft.map.lobby] run spawnpoint @s ~ ~ ~
gamemode survival

