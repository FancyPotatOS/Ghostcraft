
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.item.frag_grenade.immune,distance=0..3] run damage @s 16 ghostcraft:frag_grenade
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.item.frag_grenade.immune,distance=3..6] run damage @s 10 ghostcraft:frag_grenade
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.item.frag_grenade.immune,distance=6..9] run damage @s 4 ghostcraft:frag_grenade

playsound ghostcraft:explosion hostile @a ~ ~ ~ 2

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 2 force
particle minecraft:explosion ~ ~ ~ 0 0 0 0 10 force
