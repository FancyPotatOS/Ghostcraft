#
#   Player Setup
#   
#   Purpose: To initialize a new player during the game_ended state
#
#   Input: None
#


function ghostcraft:game/player_reset
gamemode spectator
tag @s add ghostcraft.spectating

tp @s @e[type=#ghostcraft:player,limit=1,gamemode=!spectator]
tp @s @e[type=#ghostcraft:player,limit=1,gamemode=survival]
tp @s @e[type=#ghostcraft:player,limit=1,tag=ghostcraft.ghost]
tp @s @e[type=#ghostcraft:player,limit=1,tag=ghostcraft.survivor]

title @s actionbar {"text":"A game just finished, please wait..."}
title @s title ''

