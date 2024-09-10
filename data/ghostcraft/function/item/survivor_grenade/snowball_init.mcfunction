
tag @s add ghostcraft.item.survivor_grenade
tag @s add ghostcraft.item.steed

summon item ~ ~ ~ {Item:{id:"minecraft:snowball",count:1b},PickupDelay:10000,Tags:["ghostcraft.new", "ghostcraft.item.survivor_grenade", "ghostcraft.item.ride_trigger", "ghostcraft.item.uuid"]}
ride @e[tag=ghostcraft.new,limit=1] mount @s

data modify entity @e[tag=ghostcraft.new,limit=1] Item.tag.ghostcraft_uuid set from entity @s UUID[0]

scoreboard players operation @s ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players operation @e[tag=ghostcraft.new,limit=1] ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players add next_id ghostcraft.ride_id 1

tag @e[tag=ghostcraft.new] remove ghostcraft.new
