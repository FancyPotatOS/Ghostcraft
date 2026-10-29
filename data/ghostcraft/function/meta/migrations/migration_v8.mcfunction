#
#   Migration File v3.0
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


# Early migration stop if right version
execute if score version ghostcraft.master matches 9 run return 0

# Apply last migration
execute unless score version ghostcraft.master matches 8.. run function ghostcraft:meta/migrations/migration_v7

tellraw @a ["",{"text":"[GhostCraft Datapack] - Setting up v3.0","bold":true,"color":"dark_blue"}," - Setup"]

# Set the version
scoreboard players set version ghostcraft.master 9


# 26.3 (v3.0) updates



