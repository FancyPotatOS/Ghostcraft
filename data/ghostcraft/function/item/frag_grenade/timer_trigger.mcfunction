
tag @s add ghostcraft.item.frag_grenade.timer_trigger_parent

execute if entity @s[tag=ghostcraft.item.steed] as @e[tag=ghostcraft.item.frag_grenade,tag=!ghostcraft.item.frag_grenade.timer_trigger_parent] if score @s ghostcraft.ride_id = @e[tag=ghostcraft.item.frag_grenade.timer_trigger_parent,limit=1] ghostcraft.ride_id run kill @s

kill @s

function ghostcraft:item/frag_grenade/explode
