#
#   Ghost Energy Tick
#   
#   Purpose: To add to the energy of the ghost
#
#   Input: None
#


scoreboard players add @s ghostcraft.ability.ghost_energy 1

# Hard cap on stored energy
execute if score ability.ghost_energy.max_energy ghostcraft.config < @s ghostcraft.ability.ghost_energy run scoreboard players operation @s ghostcraft.ability.ghost_energy = ability.ghost_energy.max_energy ghostcraft.config


execute unless entity @s[tag=ghostcraft.ability.pounce.charging] run function ghostcraft:ability/ghost_energy/match_experience

