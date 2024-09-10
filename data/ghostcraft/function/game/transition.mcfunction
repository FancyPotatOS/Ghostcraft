#
#   Game State Transition
#   
#   Purpose: To perform relevant methods for a normal state transition
#
#   Input: None
#


function #ghostcraft:game/stop

scoreboard players operation phase ghostcraft.master = next_phase ghostcraft.master
scoreboard players reset next_phase ghostcraft.master

function #ghostcraft:game/start

