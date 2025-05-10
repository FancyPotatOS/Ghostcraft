#
#   Migration File v1.3
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


# Apply last migration
execute unless score version ghostcraft.master matches 2.. run function ghostcraft:meta/migrations/migration_v1

tellraw @a ["",{"text":"[GhostCraft Datapack] - Migrating to v1.4","bold":true,"color":"dark_blue"}," - Setup"]

# Set the version
scoreboard players set version ghostcraft.master 3

scoreboard objectives add ghostcraft.game.ghosthunt.ghost_kills playerKillCount

# Two minutes, minus a couple ticks to avoid any minute-based activations
scoreboard players set game.ghosthunt.minimum_time ghostcraft.config 1198


