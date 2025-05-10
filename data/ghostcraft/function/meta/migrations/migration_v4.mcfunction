#
#   Migration File v1.3
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


# Apply last migration
execute unless score version ghostcraft.master matches 4.. run function ghostcraft:meta/migrations/migration_v3

# Set the version
scoreboard players set version ghostcraft.master 5

scoreboard objectives add ghostcraft.ability.cling.y dummy


