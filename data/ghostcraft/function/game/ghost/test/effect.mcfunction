
# Unset value
execute unless score effect.ambient_ghost.particles ghostcraft.config matches 0.. run particle minecraft:block_marker{block_state:barrier} ~ ~ ~ 0.05 1 0.05 0 30 force @a[tag=!ghostcraft.effect.ambient_ghost.invisible]

execute if score effect.ambient_ghost.particles ghostcraft.config matches 0..10 run function ghostcraft:game/ghost/effect
