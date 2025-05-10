#
#   Migration File V1
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


# Apply last migration
execute unless score version ghostcraft.master matches 2.. run function ghostcraft:meta/migrations/migration_v1

# Set the version
scoreboard players set version ghostcraft.master 3


scoreboard objectives add ghostcraft.effect.ghost.hurt_effect dummy
scoreboard objectives add ghostcraft.effect.ghost.hurt_effect.trigger trigger

