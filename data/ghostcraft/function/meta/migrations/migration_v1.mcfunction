#
#   Migration File v1.3
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


# Apply last migration
execute unless score version ghostcraft.master matches 1.. run function ghostcraft:meta/migrations/migration_v0

tellraw @a ["",{"text":"[GhostCraft Datapack] - Migrating to v1.3","bold":true,"color":"dark_blue"}," - Setup"]

# Set the version
scoreboard players set version ghostcraft.master 2

scoreboard objectives add ghostcraft.ability.cling.y dummy


