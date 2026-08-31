

tag @n[tag=ghostcraft.map.warehouse.brewing_stand.agitated.target] remove ghostcraft.map.warehouse.brewing_stand.agitated

playsound minecraft:block.fire.extinguish block @a[distance=..16] ~ ~ ~ 0.5 0.3

particle minecraft:flash{color:[0.2,1,0.2,1]} ~ ~ ~ 0 0 0 1 10
particle minecraft:dust_plume ~ ~ ~ 0.1 0.1 0.1 0.1 30
particle minecraft:campfire_signal_smoke ~ ~ ~ 0.2 0.2 0.2 0.1 30

execute store result score @s ghostcraft.uuid run data get entity @s Thrower[0]

tag @s add ghostcraft.map.warehouse.brewing_stand.item
execute as @a if score @s ghostcraft.uuid = @n[tag=ghostcraft.map.warehouse.brewing_stand.item] ghostcraft.uuid run scoreboard players add @s ghostcraft.map.task.contributed 1

kill @s

