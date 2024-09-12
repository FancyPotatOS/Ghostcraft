
tag @s add ghostcraft.item.snowball.item
execute store result score @s ghostcraft.temp run data get entity @s Item.tag.thrower_uuid

execute at @s run playsound minecraft:ambient.cave hostile @a[distance=..20] ~ ~ ~ 1 0.5 0.5
execute at @s run playsound ghostcraft:stab_start hostile @a[distance=..20] ~ ~ ~ 1 1 0.5

kill @s
