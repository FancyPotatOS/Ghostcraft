#
#   Clean Map
#   
#   Purpose: To clear the map of all Anti-Camp-related things
#
#   Input: None
#


kill @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.player_marker]
scoreboard players reset @e[type=#ghostcraft:player] ghostcraft.game.ghosthunt.anti_camp.tails

