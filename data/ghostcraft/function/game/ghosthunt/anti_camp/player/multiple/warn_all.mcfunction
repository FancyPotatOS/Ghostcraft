#
#   Warn All
#   
#   Purpose: To warm all players with a tail nearby that they are approaching the anti-camp activation
#
#   Input: None
#


# Tag all nearby trail markers that we are warning
execute as @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.player_marker,distance=..10] run tag @s add ghostcraft.game.ghosthunt.anti_camp.marker.warning_all

# Test if this player should be warned
execute as @e[type=#ghostcraft:player,distance=..10] run function ghostcraft:game/ghosthunt/anti_camp/player/multiple/test_if_should_warn

tag @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.marker.warning_all] remove ghostcraft.game.ghosthunt.anti_camp.marker.warning_all
