
# Update UUID from stab queue
execute store result score first_uuid ghostcraft.temp run data get storage ghostcraft:data stab_queue[0]

# Tag players using stab
execute as @a[tag=ghostcraft.stab.using] if score @s ghostcraft.uuid = first_uuid ghostcraft.temp run tag @s add ghostcraft.stab.remove

execute as @a[tag=ghostcraft.stab.remove] at @s run function ghostcraft:item/stab/attack

# Remove from the stab queue
data remove storage ghostcraft:data stab_queue[0]

# Remove tags
tag @a[tag=ghostcraft.stab.remove] remove ghostcraft.stab.using
tag @a[tag=ghostcraft.stab.remove] remove ghostcraft.stab.remove
