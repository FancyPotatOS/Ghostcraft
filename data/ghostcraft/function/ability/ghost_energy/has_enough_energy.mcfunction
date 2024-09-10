#
#   Has Enough Ghost Energy
#   
#   Purpose: To test if has enough energy to perform a certain action
#
#   Input: Score required_energy ghostcraft.ability.ghost_energy
#


execute if score @s ghostcraft.ability.ghost_energy < required_energy ghostcraft.ability.ghost_energy run return fail
return 1

