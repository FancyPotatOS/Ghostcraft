#
#   Start Game
#   
#   Purpose: To transition to the lobby phase
#
#   Input: None
#


# Set this phase as the return phase
scoreboard players set return_phase ghostcraft.master 0
scoreboard players set next_phase ghostcraft.master 0
scoreboard players reset coming_from_lobby ghostcraft.temp

execute as @a at @s in ghostcraft:empty at @e[tag=ghostcraft.map.lobby,limit=1,sort=random] run spawnpoint @s ~ ~ ~

function ghostcraft:game/transition

