#
#   On Player Death
#   
#   Purpose: To calculate required values for when a player dies
#
#   Input: None
#


execute if entity @s[tag=ghostcraft.survivor] run function ghostcraft:game/ghosthunt/survivor_died
execute if entity @s[tag=ghostcraft.ghost] run function ghostcraft:game/ghosthunt/ghost_died

function ghostcraft:game/player_reset
gamemode spectator
tag @s add ghostcraft.spectating

tp @s @e[type=#ghostcraft:player,limit=1,tag=ghostcraft.ghost]
tp @s @e[type=#ghostcraft:player,limit=1,tag=ghostcraft.survivor]

