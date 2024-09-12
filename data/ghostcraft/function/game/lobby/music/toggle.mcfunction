#
#   Toggle Music
#   
#   Purpose: To toggle the music tag for the executing player
#
#   Input: None
#


execute if entity @s[tag=ghostcraft.music.mute] run tag @s add ghostcraft.game.lobby.music.toggle.muted

execute if entity @s[tag=ghostcraft.game.lobby.music.toggle.muted] run function ghostcraft:game/lobby/music/play
execute if entity @s[tag=ghostcraft.game.lobby.music.toggle.muted] run tag @s remove ghostcraft.music.mute

execute unless entity @s[tag=ghostcraft.game.lobby.music.toggle.muted] run stopsound @s
execute unless entity @s[tag=ghostcraft.game.lobby.music.toggle.muted] run tag @s add ghostcraft.music.mute

tag @s remove ghostcraft.game.lobby.music.toggle.muted

