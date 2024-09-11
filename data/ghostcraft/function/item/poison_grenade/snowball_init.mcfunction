
tag @s add ghostcraft.item.poison_grenade
tag @s add ghostcraft.item.steed
tag @s add ghostcraft.item.timer
tag @s add ghostcraft.item.timer_sync
tag @s add ghostcraft.item.timer_cycle

tag @s add ghostcraft.item.motion_sync

summon item ~ ~ ~ {Item:{id:"minecraft:snowball",count:1b},PickupDelay:10000,Tags:["ghostcraft.new", "ghostcraft.item.poison_grenade", "ghostcraft.item.ride_trigger", "ghostcraft.item.timer_receive", "ghostcraft.item.motion_receive", "ghostcraft.item.uuid"]}
ride @e[tag=ghostcraft.new,limit=1] mount @s

data modify entity @e[tag=ghostcraft.new,limit=1] Item.components."minecraft:custom_data".ghostcraft.thrower_uuid set from entity @p[tag=ghostcraft.advtrigger.snowball.thrower] UUID[0]

scoreboard players operation @s ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players operation @e[tag=ghostcraft.new,limit=1] ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players add next_id ghostcraft.ride_id 1

scoreboard players operation @s ghostcraft.timer_id = next_id ghostcraft.timer_id
scoreboard players operation @e[tag=ghostcraft.new,limit=1] ghostcraft.timer_id = next_id ghostcraft.timer_id
scoreboard players add next_id ghostcraft.timer_id 1

scoreboard players set @s ghostcraft.timer 80
scoreboard players set @s ghostcraft.timer_cycle 10
scoreboard players set @s ghostcraft.timer_cycle_offset 1
scoreboard players set @e[tag=ghostcraft.new,limit=1] ghostcraft.timer_cycle 10
scoreboard players set @e[tag=ghostcraft.new,limit=1] ghostcraft.timer_cycle_offset 1

tag @e[tag=ghostcraft.new] remove ghostcraft.new
