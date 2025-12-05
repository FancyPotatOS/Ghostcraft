#
#   Ghost Effect
#   
#   Purpose: To make the current player display the ghost effect
#
#   Input: None
#


# Don't set the particle of a player that has been initialized
execute if entity @s[tag=ghostcraft.player.initialized] run return 0

scoreboard players set @s ghostcraft.effect.ghost.particle_effect 0
scoreboard players enable @s ghostcraft.effect.ghost.particle_effect.trigger

