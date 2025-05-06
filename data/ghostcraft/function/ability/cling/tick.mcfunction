#
#   Tick
#   
#   Purpose: To update this entity's cling ability
#
#   Input: None
#


execute if entity @s[tag=ghostcraft.ability.cling.hesitation] run return run tag @s remove ghostcraft.ability.cling.hesitation

execute if entity @s[tag=ghostcraft.ability.cling.engaged] run return run function ghostcraft:ability/cling/engaged_tick
function ghostcraft:ability/cling/unengaged_tick

