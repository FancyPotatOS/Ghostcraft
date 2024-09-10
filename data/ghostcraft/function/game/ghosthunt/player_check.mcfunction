#
#   Ghosthunt Player Check
#   
#   Purpose: To check if there is enough players to play Ghosthunt
#
#   Input: None
#


function ghostcraft:game/count_players
scoreboard players operation required_players ghostcraft.config = game.ghosthunt.ghosts ghostcraft.config
scoreboard players operation required_players ghostcraft.config += game.ghosthunt.min_survivors ghostcraft.config

execute if score player_count ghostcraft.temp < required_players ghostcraft.config run scoreboard players set game.player_check.success ghostcraft.temp 0

