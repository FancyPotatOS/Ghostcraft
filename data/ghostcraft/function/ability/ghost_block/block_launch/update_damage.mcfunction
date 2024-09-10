
execute positioned ~ ~-0.5 ~ as @e[type=#ghostcraft:player,distance=..0.75,scores={ghostcraft.item.crafting_table.invincibility=..0}] run tag @s add ghostcraft.item.crafting_table.hit

execute as @e[type=#ghostcraft:player,tag=ghostcraft.item.crafting_table.hit] run damage @s 4 ghostcraft:crafting_table
execute as @e[type=#ghostcraft:player,tag=ghostcraft.item.crafting_table.hit] run scoreboard players set @s ghostcraft.item.crafting_table.invincibility 20

tag @e[type=#ghostcraft:player,tag=ghostcraft.item.crafting_table.hit] remove ghostcraft.item.crafting_table.hit
