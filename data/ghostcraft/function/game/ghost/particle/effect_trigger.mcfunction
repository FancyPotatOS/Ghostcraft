

scoreboard players set @s ghostcraft.effect.ghost.particle_effect -1

function #ghostcraft:game/ghost/effect_trigger

scoreboard players set @s ghostcraft.effect.ghost.particle_effect.trigger -1
scoreboard players enable @s ghostcraft.effect.ghost.particle_effect.trigger

execute if score @s ghostcraft.effect.ghost.particle_effect matches -1 run title @s subtitle {"text":"That is not a valid ghost particle effect."}
execute if score @s ghostcraft.effect.ghost.particle_effect matches -1 run title @s title {"text":""}
execute if score @s ghostcraft.effect.ghost.particle_effect matches -1 run scoreboard players set @s ghostcraft.effect.ghost.particle_effect 0

