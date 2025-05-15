#
#   Test If Should Warn
#   
#   Purpose: To check if this player should be warned
#
#   Input: None
#


tag @s add ghostcraft.game.ghosthunt.anti_camp.player.current_warn

# Tag as should be warned if there is a warning tail marker that I own
execute as @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.marker.warning_all] if score @s ghostcraft.uuid = @e[type=#ghostcraft:player,limit=1,tag=ghostcraft.game.ghosthunt.anti_camp.player.current_warn] ghostcraft.uuid run tag @e[type=#ghostcraft:player,limit=1,tag=ghostcraft.game.ghosthunt.anti_camp.player.current_warn] add ghostcraft.game.ghosthunt.anti_camp.player.should_warn

# Warn me
execute if entity @s[tag=ghostcraft.game.ghosthunt.anti_camp.player.should_warn] at @s run function ghostcraft:game/ghosthunt/anti_camp/player/multiple/warn

# Clean up tags
tag @s remove ghostcraft.game.ghosthunt.anti_camp.player.current_warn
tag @s remove ghostcraft.game.ghosthunt.anti_camp.player.should_warn

