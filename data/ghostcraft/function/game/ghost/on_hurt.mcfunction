#
#   Ghost On Hurt Effect
#   
#   Purpose: To make the current player display the ghost hurt effect
#
#   Input: None
#


## Particle
tag @s add effect.ghost.hurt_effect.particle.unplayed
function #ghostcraft:game/ghost/play_particle

# Default value
execute if entity @s[tag=effect.ghost.hurt_effect.particle.unplayed] run particle minecraft:block{block_state:"minecraft:obsidian"} ~ ~1 ~ 0.05 0.5 0.05 1 50 force @a[tag=!effect.ghost.hurt_effect.invisible]
tag @s remove effect.ghost.hurt_effect.particle.unplayed


## Sound
tag @s add effect.ghost.hurt_effect.sound.unplayed
function #ghostcraft:game/ghost/play_sound

# Default value
execute if entity @s[tag=effect.ghost.hurt_effect.sound.unplayed] run playsound ghostcraft:ghost_hurt hostile @a[distance=..25] ~ ~ ~ 1 1
tag @s remove effect.ghost.hurt_effect.sound.unplayed

