
execute store result score @s ghostcraft.uuid run data get entity @s UUID[0]

execute in ghostcraft:empty run tp 0 175 0

function #ghostcraft:game/new_player

attribute @s player.block_break_speed base set 0

tag @s add ghostcraft.player.initialized
