#
#   Migration File v1.3
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


# Apply last migration
execute unless score version ghostcraft.master matches 5.. run function ghostcraft:meta/migrations/migration_v4

tellraw @a ["",{"text":"[GhostCraft Datapack] - Setting up v1.4","bold":true,"color":"dark_blue"}," - Setup"]

# Set the version
scoreboard players set version ghostcraft.master 6

scoreboard objectives add ghostcraft.game.ghosthunt.ghost_kills playerKillCount

# Two minutes, minus a couple ticks to avoid any minute-based activations
scoreboard players set game.ghosthunt.minimum_time ghostcraft.config 1198
scoreboard players set max_time ghostcraft.item.grappling_hook.in_entity_timer 20


