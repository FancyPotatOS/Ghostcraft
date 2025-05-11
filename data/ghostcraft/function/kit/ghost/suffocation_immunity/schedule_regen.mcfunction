
execute as @a if predicate ghostcraft:kit/ghost/suffocation_immunity/wearing if score @s ghostcraft.kit.ghost.suffocation_immunity = last_id ghostcraft.kit.ghost.suffocation_immunity run tag @s add ghostcraft.kit.ghost.suffocation_immunity.target
scoreboard players add last_id ghostcraft.kit.ghost.suffocation_immunity 1

effect clear @a[tag=ghostcraft.kit.ghost.suffocation_immunity.target] minecraft:regeneration

tag @a remove ghostcraft.kit.ghost.suffocation_immunity.target
