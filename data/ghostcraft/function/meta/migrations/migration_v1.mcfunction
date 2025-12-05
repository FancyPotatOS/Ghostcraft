#
#   Migration File V1
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


# Apply last migration
execute unless score version ghostcraft.master matches 1.. run function ghostcraft:meta/migrations/migration_v0

# Set the version
scoreboard players set version ghostcraft.master 2


# Teams
team add ghostcraft.lobby
team modify ghostcraft.lobby collisionRule pushOtherTeams
team modify ghostcraft.lobby deathMessageVisibility never
team modify ghostcraft.lobby friendlyFire false
team modify ghostcraft.lobby seeFriendlyInvisibles true


# Setup gamerules
gamerule doEntityDrops false
gamerule doImmediateRespawn true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule disableElytraMovementCheck true
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doVinesSpread false
gamerule doTileDrops false
gamerule doWeatherCycle false
gamerule doWardenSpawning false
gamerule keepInventory true
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule spawnRadius 0
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule announceAdvancements false

