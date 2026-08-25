#
#   Picked Up Unset Expiry
#   
#   Purpose: To fix the item that has been picked up and has no expiry set, by setting the expiry to a configured value.
#
#   Input: None
#


# Remove the old one
clear @s trial_key[minecraft:custom_data={ghostcraft:{type:"vault.unset_expiry"}}]

# Give clean version
loot give @s loot ghostcraft:vault/tokens/basic_token

scoreboard players operation @s ghostcraft.token.expiry_time = world_time ghostcraft.master
scoreboard players operation @s ghostcraft.token.expiry_time += vault.basic_token.expiry_time ghostcraft.config

