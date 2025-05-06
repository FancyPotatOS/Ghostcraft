#
#   Unengaged Tick
#   
#   Purpose: To update a cling-unengaged entity
#
#   Input: None
#


execute if score ability.cling.regain_ability_energy ghostcraft.config < @s ghostcraft.ability.ghost_energy run tag @s remove ghostcraft.ability.cling.burnt_out

execute unless entity @s[tag=ghostcraft.ability.cling.burnt_out] if predicate ghostcraft:ability/cling/engageable run return run function ghostcraft:ability/cling/attempt_cling

