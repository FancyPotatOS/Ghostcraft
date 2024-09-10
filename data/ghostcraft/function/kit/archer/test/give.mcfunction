
execute unless score @s ghostcraft.class matches -2147483648..2147483647 run scoreboard players set @s ghostcraft.class 1
execute if score @s ghostcraft.class matches 1 run function ghostcraft:kit/archer/give
