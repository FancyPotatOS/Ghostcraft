
execute store result score vampire.next_uuid ghostcraft.temp run data get storage ghostcraft:data vampire_queue[0]

execute as @a[tag=ghostcraft.ability.vampire.regen_flag] if score @s ghostcraft.uuid = vampire.next_uuid ghostcraft.temp run function ghostcraft:ability/vampire/remove_regen

data remove storage ghostcraft:data vampire_queue[0]
