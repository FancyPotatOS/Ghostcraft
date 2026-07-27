#
#   Give Configured
#   
#   Purpose: To give all configured items to the player
#
#   Input: None
#


function ghostcraft:user_config/load_user

execute store result score kit.ghost.give_configured.item_count ghostcraft.temp run data get storage ghostcraft:data current_user.ghost.choices
scoreboard players set kit.ghost.give_configured.index ghostcraft.temp 0

function ghostcraft:kit/ghost/give_configured_rec

