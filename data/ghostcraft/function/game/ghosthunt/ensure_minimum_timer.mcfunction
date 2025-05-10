#
#   Ensure Minimum Timer
#   
#   Purpose: To ensure the timer is set to at least a config value when a survivor is killed by the ghost
#
#   Input: None
#


# If less than a specific time, set it to the minimum value
execute if score game_timer ghostcraft.temp < game.ghosthunt.minimum_time ghostcraft.config run scoreboard players operation game_timer ghostcraft.temp = game.ghosthunt.minimum_time ghostcraft.config

