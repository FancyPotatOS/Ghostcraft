#
#   Engaged Tick
#   
#   Purpose: To update a cling-engaged entity
#
#   Input: None
#


# Disengage and stop if not engageable anymore
execute unless predicate ghostcraft:ability/cling/engageable run return run function ghostcraft:ability/cling/disengage

scoreboard players remove @s ghostcraft.ability.ghost_energy 2
execute if score @s ghostcraft.ability.ghost_energy matches ..2 run return run function ghostcraft:ability/cling/not_enough_energy

# Disengage and stop if not against any solids
execute if block ~-0.30001 ~ ~ #ghostcraft:ability/cling/nonsolid if block ~ ~ ~-0.30001 #ghostcraft:ability/cling/nonsolid if block ~0.30001 ~ ~ #ghostcraft:ability/cling/nonsolid if block ~ ~ ~0.30001 #ghostcraft:ability/cling/nonsolid run return run function ghostcraft:ability/cling/disengage

scoreboard players set scale ghostcraft.ability.cling.y 1000
scoreboard players set launch_scale ghostcraft.ability.cling.y 5
scoreboard players set -1 ghostcraft.ability.cling.y -1

# Now we check where the player is relative to their cling y position
execute store result score delta_position ghostcraft.ability.cling.y run data get entity @s Pos[1] 1000
scoreboard players operation delta_position ghostcraft.ability.cling.y -= @s ghostcraft.ability.cling.y
scoreboard players set position_parity ghostcraft.ability.cling.y -1
execute if score delta_position ghostcraft.ability.cling.y matches 0.. run scoreboard players set position_parity ghostcraft.ability.cling.y 1

# Get their position vs. their momentum to see if we need an abrupt slowdown
execute store result score delta_motion ghostcraft.ability.cling.y run data get entity @s Motion[1] 1000
scoreboard players set motion_parity ghostcraft.ability.cling.y -1
execute if score delta_motion ghostcraft.ability.cling.y matches 0.. run scoreboard players set motion_parity ghostcraft.ability.cling.y 1
scoreboard players operation delta_motion ghostcraft.ability.cling.y *= -1 ghostcraft.ability.cling.y
scoreboard players operation delta_motion ghostcraft.ability.cling.y *= launch_scale ghostcraft.ability.cling.y
scoreboard players set $x player_motion.api.launch 0
scoreboard players set $z player_motion.api.launch 0
scoreboard players operation $y player_motion.api.launch = delta_motion ghostcraft.ability.cling.y
execute if score motion_parity ghostcraft.ability.cling.y = position_parity ghostcraft.ability.cling.y unless score delta_motion ghostcraft.ability.cling.y matches -100..100 run function player_motion:api/launch_xyz
execute unless score delta_motion ghostcraft.ability.cling.y matches -2000..2000 run tag @s add ghostcraft.ability.cling.prevent_spasm
execute if score delta_motion ghostcraft.ability.cling.y matches -1500..1500 run tag @s remove ghostcraft.ability.cling.prevent_spasm

#tellraw @s ["motion: ", {score:{"name":"delta_motion", objective:"ghostcraft.ability.cling.y"}}, " (", {score:{"name":"motion_parity", objective:"ghostcraft.ability.cling.y"}} ,"); position: ", {score:{"name":"delta_position", objective:"ghostcraft.ability.cling.y"}}, " (", {score:{"name":"position_parity", objective:"ghostcraft.ability.cling.y"}}, ")"]

# Apply the gravity based on their position delta
function ghostcraft:ability/cling/macro/clear
execute store result storage ghostcraft:data macro.gravity double 0.00004 run scoreboard players get delta_position ghostcraft.ability.cling.y
function ghostcraft:ability/cling/macro/update_gravity_balance with storage ghostcraft:data macro

# If the current position is higher than when started the climb, move it by a scaled distance
scoreboard players set avg_scale ghostcraft.ability.cling.y 3
execute store result score position ghostcraft.ability.cling.y run data get entity @s Pos[1] 1000
scoreboard players operation position ghostcraft.ability.cling.y -= @s ghostcraft.ability.cling.y
scoreboard players operation position ghostcraft.ability.cling.y /= avg_scale ghostcraft.ability.cling.y
execute if score position ghostcraft.ability.cling.y matches 1.. run scoreboard players operation @s ghostcraft.ability.cling.y += position ghostcraft.ability.cling.y 

scoreboard players reset scale ghostcraft.ability.cling.y
scoreboard players reset launch_scale ghostcraft.ability.cling.y
scoreboard players reset -1 ghostcraft.ability.cling.y
scoreboard players reset avg_scale ghostcraft.ability.cling.y

scoreboard players reset delta_position ghostcraft.ability.cling.y
scoreboard players reset position_parity ghostcraft.ability.cling.y
scoreboard players reset position ghostcraft.ability.cling.y

#scoreboard players reset delta_motion ghostcraft.ability.cling.y
scoreboard players reset motion_parity ghostcraft.ability.cling.y
