#
#   User Exists
#   
#   Purpose: To check if the user's configuration from storage `ghostcraft:data users` exists
#
#   Input: {UUID: str}
#


scoreboard players set user_config.user_exists ghostcraft.temp 0
$execute if data storage ghostcraft:data users."$(UUID)" run scoreboard players set user_config.user_exists ghostcraft.temp 1

