

execute store result score ghost_health ghostcraft.temp run data get entity @s Health

scoreboard players operation ghost_healths ghostcraft.temp += ghost_health ghostcraft.temp

