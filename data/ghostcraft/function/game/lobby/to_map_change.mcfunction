#
#   To Map Changed
#   
#   Purpose: To transition to the map_change phase
#
#   Input: None
#


execute if score map.change_cooldown ghostcraft.temp matches 1.. run tellraw @s [{"color":"red","text":"The map is still under cooldown. Please wait another "},{"score": {"name": "map.change_cooldown","objective": "ghostcraft.temp"}},{"text":" rounds."}]
execute if score map.change_cooldown ghostcraft.temp matches 1.. run return 0

# Set this phase as the return phase
scoreboard players set return_phase ghostcraft.master 0
scoreboard players set next_phase ghostcraft.master 4

function ghostcraft:game/transition

