
attribute @s minecraft:attack_damage modifier remove ghostcraft.item.stab.using

playsound ghostcraft:stab_finish hostile @a ~ ~ ~ 1
execute positioned ~ ~1 ~ run particle minecraft:block{block_state:"minecraft:fire"} ^ ^ ^1 0.25 0.5 0.25 0 30

execute positioned ^ ^ ^1 as @e[type=#ghostcraft:player,tag=!ghostcraft.item.stab.immune,tag=!ghostcraft.stab.remove,distance=..1.5] run damage @s 12 ghostcraft:stab
