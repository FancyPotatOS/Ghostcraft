#
#   Test If Should Fault
#   
#   Purpose: To check if this player should have the anti-camping functionality activated
#
#   Input: None
#


tag @s add ghostcraft.game.ghosthunt.anti_camp.player.current_fault

# Tag as should be faulted if there is a faulting tail marker that I own
execute as @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.marker.faulting_all] if score @s ghostcraft.uuid = @e[type=#ghostcraft:player,limit=1,tag=ghostcraft.game.ghosthunt.anti_camp.player.current_fault] ghostcraft.uuid run tag @e[type=#ghostcraft:player,limit=1,tag=ghostcraft.game.ghosthunt.anti_camp.player.current_fault] add ghostcraft.game.ghosthunt.anti_camp.player.should_fault

# Fault me
execute if entity @s[tag=ghostcraft.game.ghosthunt.anti_camp.player.should_fault] at @s run function ghostcraft:game/ghosthunt/anti_camp/player/multiple/fault

# Clean up tags
tag @s remove ghostcraft.game.ghosthunt.anti_camp.player.current_fault
tag @s remove ghostcraft.game.ghosthunt.anti_camp.player.should_fault

