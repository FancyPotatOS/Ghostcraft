#
#   Cycle Nth Item
#   
#   Purpose: To cycle the option of this player's configured nth ghost choice (ex. 2nd chosen item from "CraftingTable" -> "Blink")
#
#   Input: Score 'index ghostcraft.temp'
#


# Get nth choice
data modify storage ghostcraft:data macro set value {index:0}
execute store result storage ghostcraft:data macro.index int 1 run scoreboard players get index ghostcraft.kit.ghost.cycle_nth_trigger
function ghostcraft:kit/ghost/user_config/get_nth_choice_macro with storage ghostcraft:data macro

# Get choice
data modify storage ghostcraft:data macro set value {choice:"Scare"}
data modify storage ghostcraft:data macro.choice set from storage ghostcraft:data choice
function ghostcraft:kit/ghost/user_config/get_chosen_cycle with storage ghostcraft:data macro

# Insert back in
data modify storage ghostcraft:data macro set value {index:0,new_choice:"Scare"}
execute store result storage ghostcraft:data macro.index int 1 run scoreboard players get index ghostcraft.kit.ghost.cycle_nth_trigger
data modify storage ghostcraft:data macro.new_choice set from storage ghostcraft:data chosen_cycle.next
function ghostcraft:kit/ghost/user_config/set_nth_choice_macro with storage ghostcraft:data macro

function ghostcraft:user_config/save_user

