#
#   Survivors Win
#   
#   Purpose: To update the game state because survivors won
#
#   Input: None
#


title @a title {"text":""}
title @a subtitle {"text":"Survivors Win","bold": true,"color": "blue"}

function ghostcraft:game/ghosthunt/display/show_survivor_health_stats
schedule function ghostcraft:game/ghosthunt/survivor_hurt_ghost/display_stats 1t

execute as @a at @s run playsound ghostcraft:survivors_win master @s ~ ~ ~ 100000000000 1 1

scoreboard players set next_phase ghostcraft.master 3
scoreboard players reset coming_from_lobby ghostcraft.temp
function ghostcraft:game/transition

