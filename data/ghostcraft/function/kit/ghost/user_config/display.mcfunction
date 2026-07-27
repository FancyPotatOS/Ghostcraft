#
#   Display
#   
#   Purpose: To display the chosen items
#
#   Input: None
#


function ghostcraft:user_config/load_user

execute store result score display_size ghostcraft.temp run data get storage ghostcraft:data current_user.ghost.choices
scoreboard players set current_display ghostcraft.temp 0

data modify storage ghostcraft:data dialog_macro set value \
{\
    dialog_initial:"{\"type\": \"minecraft:dialog_list\",\"title\": [{\"text\": \"Class Selection\",\"bold\": false,\"underlined\": false}],\"external_title\": \"\",\"body\": ",\
    dialog_middle: ["{\"type\": \"minecraft:plain_message\",\"contents\": [{\"text\": \"Ghost Kit\",\"bold\": true,\"shadow_color\": -16777216}]}"],\
    dialog_ending:",\"inputs\": [],\"can_close_with_escape\": true,\"pause\": false,\"after_action\": \"close\",\"exit_action\": {\"label\":\"Done\",\"action\":{\"type\":\"minecraft:run_command\",\"command\":\"/trigger ghostcraft.kit.ghost.cycle_nth_trigger set -2\"}},\"columns\": 3,\"dialogs\": []}"\
}

data modify storage ghostcraft:data dialog_coll set value []
function ghostcraft:kit/ghost/user_config/display_rec

data modify storage ghostcraft:data dialog_macro.dialog_middle set from storage ghostcraft:data dialog_coll

function ghostcraft:kit/ghost/user_config/display_macro with storage ghostcraft:data dialog_macro

