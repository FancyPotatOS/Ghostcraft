
tag @e[type=splash_potion,tag=ghostcraft.kit.support.infinite_potion.delayed,limit=1] add ghostcraft.kit.support.infinite_potion.temp

execute store result score thrown_infinite_potion ghostcraft.uuid run data get entity @e[type=splash_potion,tag=ghostcraft.kit.support.infinite_potion.temp,limit=1] Owner[0]

execute as @e[type=#ghostcraft:player] if score @s ghostcraft.uuid = thrown_infinite_potion ghostcraft.uuid run loot give @s loot ghostcraft:kit/support/potions/weak_potion

tag @e[type=splash_potion,tag=ghostcraft.kit.support.infinite_potion.temp,limit=1] remove ghostcraft.kit.support.infinite_potion.delayed
tag @e[type=splash_potion,tag=ghostcraft.kit.support.infinite_potion.temp,limit=1] remove ghostcraft.kit.support.infinite_potion.temp
