

# Flag existing items
tag @e[type=item] add ghostcraft.map.warehouse.reward.safeguard

# Spawn token for this player
execute as @n[tag=ghostcraft.map.warehouse.reward_location] at @s run loot spawn ~ ~ ~ loot ghostcraft:vault/tokens/basic_token_unset

# Make me the item's owner
tag @s add ghostcraft.map.warehouse.reward.owner
execute as @n[type=item,tag=!ghostcraft.map.warehouse.reward.safeguard] run function ghostcraft:map/warehouse/tasks/apply_item_ownership

# Clean up tags
tag @e[type=item] remove ghostcraft.map.warehouse.reward.safeguard
tag @s remove ghostcraft.map.warehouse.reward.owner

