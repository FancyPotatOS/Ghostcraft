

execute unless entity @s[tag=ghostcraft.map.warehouse.specific_block] run return run setblock ~ ~ ~ air

execute if entity @s[tag=ghostcraft.map.warehouse.specific_block.bookshelf] run setblock ~ ~ ~ bookshelf

function #ghostcraft:map/block_reset

