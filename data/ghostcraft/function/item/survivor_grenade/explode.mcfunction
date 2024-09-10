
execute at @s as @e[type=#ghostcraft:player,tag=!ghostcraft.item.survivor_grenade.immune,distance=0..2] run damage @s 6 ghostcraft:survivor_grenade
execute at @s as @e[type=#ghostcraft:player,tag=!ghostcraft.item.survivor_grenade.immune,distance=2..4] run damage @s 2 ghostcraft:survivor_grenade

playsound ghostcraft:explosion hostile @a ~ ~ ~ 4.0

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 2 force
particle minecraft:explosion ~ ~ ~ 0 0 0 0 10 force
