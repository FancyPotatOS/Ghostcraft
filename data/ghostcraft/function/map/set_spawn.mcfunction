

execute in ghostcraft:empty as @e[type=marker,tag=ghostcraft.map.lobby,limit=1] at @s run tp @a @s
execute as @a in ghostcraft:empty positioned 0 0 0 at @e[tag=ghostcraft.map.lobby,sort=random,limit=1] run spawnpoint @a ~ ~ ~

function ghostcraft:game/lobby/start

