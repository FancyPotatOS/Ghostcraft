#
#   Player Mount
#   
#   Purpose: To cause the interacting player to mount the chair
#
#   Input: None
#


# Get uuid and reset data
execute store result score chair.target_uuid ghostcraft.temp run data get entity @n[type=interaction] interaction.player[0]
data remove entity @n[type=interaction] interaction

# Occupied check
execute if entity @s[tag=ghostcraft.chair.occupied] run return 0

# Get player who interacted
execute as @e[type=#ghostcraft:player] if score @s ghostcraft.uuid = chair.target_uuid ghostcraft.temp run tag @s add ghostcraft.chair.target

# Sanity check
execute unless entity @n[tag=ghostcraft.chair.target] run return 0

# Cooldown check
execute as @n[tag=ghostcraft.chair.target] if score world_time ghostcraft.master < @s ghostcraft.chair.cooldown run return run function ghostcraft:logic/chair/fail_cooldown

# Mount logic
tag @s add ghostcraft.chair.occupied
execute as @n[type=#ghostcraft:player,tag=ghostcraft.chair.target] at @s run function ghostcraft:logic/chair/setup_player_mount

