#
#   Fault All
#   
#   Purpose: To warm all players with a tail nearby that they are approaching the anti-camp activation
#
#   Input: None
#


# Tag all nearby trail markers that we are faulting
execute as @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.player_marker,distance=..15] run tag @s add ghostcraft.game.ghosthunt.anti_camp.marker.faulting_all

# Test if this player should be faulted
execute as @e[type=#ghostcraft:player,distance=..15] run function ghostcraft:game/ghosthunt/anti_camp/player/multiple/test_if_should_fault

tag @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.marker.faulting_all] remove ghostcraft.game.ghosthunt.anti_camp.marker.faulting_all

