
execute as @a[tag=!ghostcraft.item.flashbang.immune,distance=..5] run effect give @s blindness 5 1 true

particle minecraft:block_marker{block_state:"minecraft:black_concrete"} ~ ~1 ~ 2 0.5 2 1 200 force @a[tag=!ghostcraft.item.flashbang.immune]
particle minecraft:block_marker{block_state:"minecraft:black_concrete"} ~ ~ ~ 2 0.5 2 1 10 force @a[tag=ghostcraft.item.flashbang.immune]
