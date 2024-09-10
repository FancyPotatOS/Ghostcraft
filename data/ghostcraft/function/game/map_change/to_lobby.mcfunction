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

function ghostcraft:game/transition

