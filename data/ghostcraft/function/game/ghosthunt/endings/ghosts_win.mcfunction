#
#   Ghosts Win
#   
#   Purpose: To update the game state because ghosts won
#
#   Input: None
#


title @a title {"text":""}
title @a subtitle {"text":"Ghosts Win","bold": true,"color": "red"}

function ghostcraft:game/ghosthunt/display/show_ghost_health_stats
schedule function ghostcraft:game/ghosthunt/survivor_hurt_ghost/display_stats 1t

execute as @a at @s run playsound ghostcraft:ghosts_win master @s ~ ~ ~ 100000000000 1 1

scoreboard players set next_phase ghostcraft.master 3
function ghostcraft:game/transition

