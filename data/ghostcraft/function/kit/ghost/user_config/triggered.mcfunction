#
#   Triggered Cycle
#   
#   Purpose: To cycle the option of this player's configured nth ghost choice from a scoreboard trigger
#
#   Input: None
#


advancement revoke @s only ghostcraft:kit/ghost/cycle_nth

scoreboard players remove @s ghostcraft.kit.ghost.cycle_nth_trigger 1
scoreboard players operation value ghostcraft.kit.ghost.cycle_nth_trigger = @s ghostcraft.kit.ghost.cycle_nth_trigger
function ghostcraft:kit/ghost/user_config/enable_trigger

execute if score value ghostcraft.kit.ghost.cycle_nth_trigger matches -2 run return run function ghostcraft:kit/ghost/user_config/display

execute if score value ghostcraft.kit.ghost.cycle_nth_trigger matches -3 run return run function ghostcraft:kit/class/ghost_kit_options/to_offhand

scoreboard players operation option ghostcraft.kit.ghost.cycle_nth_trigger = value ghostcraft.kit.ghost.cycle_nth_trigger
scoreboard players operation option ghostcraft.kit.ghost.cycle_nth_trigger %= options ghostcraft.kit.ghost.cycle_nth_trigger

scoreboard players operation index ghostcraft.kit.ghost.cycle_nth_trigger = value ghostcraft.kit.ghost.cycle_nth_trigger
scoreboard players operation index ghostcraft.kit.ghost.cycle_nth_trigger /= options ghostcraft.kit.ghost.cycle_nth_trigger

execute if score option ghostcraft.kit.ghost.cycle_nth_trigger matches 0 run function ghostcraft:kit/ghost/user_config/cycle_nth

scoreboard players operation index ghostcraft.temp = index ghostcraft.kit.ghost.cycle_nth_trigger

function ghostcraft:kit/ghost/user_config/display

