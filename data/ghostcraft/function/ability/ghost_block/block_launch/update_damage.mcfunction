
execute positioned ~ ~-0.5 ~ as @e[type=#ghostcraft:player,distance=..0.75,scores={ghostcraft.item.crafting_table.invincibility=..0}] run tag @s add ghostcraft.item.crafting_table.hit
execute positioned ~ ~-1.5 ~ as @e[type=#ghostcraft:player,distance=..0.75,scores={ghostcraft.item.crafting_table.invincibility=..0}] run tag @s add ghostcraft.item.crafting_table.hit

# Get the entity that launched
tag @s add ghostcraft.crafting_table.falling_block.current
execute as @e[type=#ghostcraft:player] if score @s ghostcraft.uuid = @e[tag=ghostcraft.crafting_table.falling_block.current,limit=1] ghostcraft.uuid run tag @s add ghostcraft.crafting_table.falling_block.launcher

execute as @e[type=#ghostcraft:player,tag=ghostcraft.item.crafting_table.hit] run damage @s 7 ghostcraft:crafting_table by @e[type=#ghostcraft:player,tag=ghostcraft.crafting_table.falling_block.launcher,limit=1]
execute as @e[type=#ghostcraft:player,tag=ghostcraft.item.crafting_table.hit] run scoreboard players set @s ghostcraft.item.crafting_table.invincibility 20

tag @s remove ghostcraft.crafting_table.falling_block.current
tag @e[type=#ghostcraft:player,tag=ghostcraft.crafting_table.falling_block.launcher] remove ghostcraft.crafting_table.falling_block.launcher

tag @e[type=#ghostcraft:player,tag=ghostcraft.item.crafting_table.hit] remove ghostcraft.item.crafting_table.hit
