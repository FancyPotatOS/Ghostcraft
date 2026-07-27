#
#   Display Recursive
#   
#   Purpose: To display the current item by score 'current_display ghostcraft.temp' and recursively call if needed
#
#   Input: None
#


# Get nth choice
data modify storage ghostcraft:data macro set value {index:0}
execute store result storage ghostcraft:data macro.index int 1 run scoreboard players get current_display ghostcraft.temp
function ghostcraft:kit/ghost/user_config/get_nth_choice_macro with storage ghostcraft:data macro

# Get choice data
data modify storage ghostcraft:data macro set value {choice:"Scare"}
data modify storage ghostcraft:data macro.choice set from storage ghostcraft:data choice
function ghostcraft:kit/ghost/user_config/get_chosen_cycle with storage ghostcraft:data macro

# Display relevant data
data modify storage ghostcraft:data macro set value {index:0,index_plus_one:1,name:"Scare",sprite:""}
scoreboard players operation current_display_p1 ghostcraft.temp = current_display ghostcraft.temp
scoreboard players add current_display_p1 ghostcraft.temp 1
execute store result storage ghostcraft:data macro.index int 1 run scoreboard players get current_display ghostcraft.temp
execute store result storage ghostcraft:data macro.index_plus_one int 1 run scoreboard players get current_display_p1 ghostcraft.temp
data modify storage ghostcraft:data macro.name set from storage ghostcraft:data chosen_cycle.display
data modify storage ghostcraft:data macro.sprite set from storage ghostcraft:data chosen_cycle.sprite
function ghostcraft:kit/ghost/user_config/build_display_macro with storage ghostcraft:data macro

# Recursive call
scoreboard players add current_display ghostcraft.temp 1
execute if score current_display ghostcraft.temp < display_size ghostcraft.temp run function ghostcraft:kit/ghost/user_config/display_rec

