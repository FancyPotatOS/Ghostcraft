#
#   Player Teardown
#   
#   Purpose: To remove lobby setup logic
#
#   Input: None
#


team leave @s

effect clear @s instant_health
effect clear @s resistance

attribute @s minecraft:attack_damage modifier remove ghostcraft.game.lobby.player

tag @a[tag=!ghostcraft.spectator] remove ghostcraft.spectating

execute at @e[type=marker,tag=ghostcraft.map.lobby,sort=random,limit=1] run spawnpoint @s ~ ~ ~

