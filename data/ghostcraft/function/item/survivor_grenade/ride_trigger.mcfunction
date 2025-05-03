
tag @s add ghostcraft.item.survivor_grenade.item

execute as @e[type=#ghostcraft:player] if score @s ghostcraft.uuid = @e[tag=ghostcraft.item.survivor_grenade.item,limit=1] ghostcraft.uuid run tag @s add ghostcraft.item.survivor_grenade.thrower

function ghostcraft:item/survivor_grenade/explode

tag @e[type=#ghostcraft:player] remove ghostcraft.item.survivor_grenade.thrower
kill @s
