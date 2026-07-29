#
#   Give Configured Recursive
#   
#   Purpose: To give all configured items to the player
#
#   Input: None
#


# Get nth choice
data modify storage ghostcraft:data macro set value {index:0}
execute store result storage ghostcraft:data macro.index int 1 run scoreboard players get kit.ghost.give_configured.index ghostcraft.temp
function ghostcraft:kit/ghost/user_config/get_nth_choice_macro with storage ghostcraft:data macro

function #ghostcraft:kit/ghost/give_configured

scoreboard players add kit.ghost.give_configured.index ghostcraft.temp 1
execute if score kit.ghost.give_configured.index ghostcraft.temp < kit.ghost.give_configured.item_count ghostcraft.temp run function ghostcraft:kit/ghost/give_configured_rec

