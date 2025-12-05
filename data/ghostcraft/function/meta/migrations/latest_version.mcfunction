#
#   Migration File v1.3
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


# Apply last migration
execute unless score version ghostcraft.master matches 6.. run function ghostcraft:meta/migrations/migration_v5

tellraw @a ["",{"text":"[GhostCraft Datapack] - Setting up v2.0","bold":true,"color":"dark_blue"}," - Setup"]

# Set the version
scoreboard players set version ghostcraft.master 7


# 1.21.10 (v2.0) updates
scoreboard objectives remove ghostcraft.effect.ghost.hurt_effect
scoreboard objectives remove ghostcraft.effect.ghost.hurt_effect.trigger

scoreboard objectives add ghostcraft.effect.ghost.particle_effect dummy
scoreboard objectives add ghostcraft.effect.ghost.particle_effect.trigger trigger

scoreboard players set game.lobby.next_game.cooldown ghostcraft.config 200



