#
#   Ensure Initialization
#   
#   Purpose: To ensure that the player's config are initialized
#
#   Input: None
#


function ghostcraft:user_config/load_uuid
function ghostcraft:user_config/user_exists with storage ghostcraft:data macro

execute if score user_config.user_exists ghostcraft.temp matches 1 run return 0

function ghostcraft:user_config/init_user

