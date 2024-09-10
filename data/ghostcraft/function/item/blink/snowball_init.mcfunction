
tag @s add ghostcraft.item.blink
tag @s add ghostcraft.item.steed
tag @s add ghostcraft.item.timer_trigger
tag @s add ghostcraft.item.timer_cycle
tag @s add ghostcraft.item.timer

summon item ~ ~ ~ {Item:{id:"minecraft:snowball",count:1},PickupDelay:10000,Tags:["ghostcraft.new", "ghostcraft.item.blink", "ghostcraft.item.ride_trigger", "ghostcraft.item.timer_receive", "ghostcraft.item.motion_receive", "ghostcraft.item.uuid"]}
ride @e[tag=ghostcraft.new,limit=1] mount @s

data modify entity @e[tag=ghostcraft.new,limit=1] Item.components."minecraft:custom_data".ghostcraft.thrower_uuid set from entity @p[tag=ghostcraft.advtrigger.snowball.thrower] UUID[0]

scoreboard players operation @s ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players operation @e[tag=ghostcraft.new,limit=1] ghostcraft.ride_id = next_id ghostcraft.ride_id
scoreboard players add next_id ghostcraft.ride_id 1

scoreboard players operation @s ghostcraft.timer_id = next_id ghostcraft.timer_id
scoreboard players operation @e[tag=ghostcraft.new,limit=1] ghostcraft.timer_id = next_id ghostcraft.timer_id
scoreboard players add next_id ghostcraft.timer_id 1

scoreboard players set @s ghostcraft.timer 60
scoreboard players set @s ghostcraft.timer_cycle 2
scoreboard players set @s ghostcraft.timer_cycle_offset 1

tag @e[tag=ghostcraft.new] remove ghostcraft.new
