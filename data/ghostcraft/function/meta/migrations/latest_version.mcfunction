#
#   Migration File V1
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#

tellraw @a ["",{"text":"[GhostCraft Datapack]","bold":true,"color":"dark_blue"}," - Setup"]

# Apply last migration
#execute unless score version ghostcraft.master matches 1.. run function armorsets:meta/migrate/migration_v0

# Set the version
scoreboard players set version ghostcraft.master 1

# Create general scoreboards
scoreboard objectives add ghostcraft.temp dummy
scoreboard objectives add ghostcraft.config dummy
scoreboard objectives add ghostcraft.uuid dummy


# # # Abilty scoreboards

# Health indicator
scoreboard objectives add ghostcraft.health health

# Pounce
scoreboard objectives add ghostcraft.ability.pounce.power dummy
scoreboard players set power_scale ghostcraft.ability.pounce.power 400

scoreboard objectives add ghostcraft.ability.ghost_energy dummy


# # # Item scoreboards

scoreboard objectives add ghostcraft.used_coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ghostcraft.used_snowball minecraft.used:minecraft.snowball

scoreboard objectives add ghostcraft.ride_id dummy
scoreboard objectives add ghostcraft.timer_id dummy
scoreboard players set next_id ghostcraft.ride_id 0
scoreboard players set next_id ghostcraft.timer_id 0

scoreboard objectives add ghostcraft.timer dummy
scoreboard objectives add ghostcraft.timer_cycle dummy
scoreboard objectives add ghostcraft.timer_cycle_offset dummy

scoreboard objectives add ghostcraft.motion.x dummy
scoreboard objectives add ghostcraft.motion.y dummy
scoreboard objectives add ghostcraft.motion.z dummy

scoreboard objectives add ghostcraft.ghost.boost.cooldown dummy

scoreboard objectives add ghostcraft.item.crafting_table.invincibility dummy

scoreboard objectives add ghostcraft.item.grappling_hook.used minecraft.used:minecraft.fishing_rod


# # # Class scoreboards

scoreboard objectives add ghostcraft.class dummy
scoreboard objectives add ghostcraft.trigger.class trigger


# # # Map scoreboards

scoreboard players set map ghostcraft.config 1


# # # Game Loop scoreboards

scoreboard players set game ghostcraft.master 0

scoreboard players set phase ghostcraft.master 0
scoreboard players set return_phase ghostcraft.master 0

scoreboard objectives add ghostcraft.logic.login dummy
scoreboard objectives add ghostcraft.trigger.game trigger

scoreboard objectives add ghostcraft.game.deaths deathCount

scoreboard objectives add ghostcraft.game.map_change.vote trigger

scoreboard objectives add ghostcraft.effect.ghost.hurt_effect trigger


# Setup base config
function ghostcraft:config/reset

# Setup dimension
function ghostcraft:world/initialize

schedule function ghostcraft:map/refresh 5s


# Create storage
data merge storage ghostcraft:data {stab_queue:[],vampire_queue:[],dimension:"ghostcraft:empty"}



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



#scoreboard objectives add ghostcraft.temp dummy
#scoreboard objectives add ghostcraft.uuid dummy

#scoreboard objectives add ghostcraft.trigger.spectator trigger
#scoreboard objectives add ghostcraft.trigger.start trigger
#scoreboard objectives add ghostcraft.trigger.new_game trigger
#scoreboard objectives add ghostcraft.trigger.class trigger

#scoreboard objectives add ghostcraft.deaths deathCount

#scoreboard objectives add ghostcraft.logic.logged_in minecraft.custom:minecraft.play_time

#scoreboard objectives add ghostcraft.class dummy
#scoreboard objectives add ghostcraft.class.default dummy

#scoreboard objectives add ghostcraft.item.crafting_table.invincibility dummy

#scoreboard objectives add ghostcraft.anticheat.id dummy

#scoreboard objectives add ghostcraft.ability.feather_falling.dy dummy

#scoreboard objectives add ghostcraft.used_coas minecraft.used:minecraft.carrot_on_a_stick
#scoreboard objectives add ghostcraft.used_snowball minecraft.used:minecraft.snowball

#scoreboard players set time_since_reload ghostcraft.master 0

# Create storage

# Setup health indicator teams
#team add ghostcraft.ability.health_indicator.low {"text":"Low Health"}
#team add ghostcraft.ability.health_indicator.medium {"text":"Mid Health"}
#team add ghostcraft.ability.health_indicator.high {"text":"High Health"}

#team modify ghostcraft.ability.health_indicator.low color red
#team modify ghostcraft.ability.health_indicator.medium color yellow
#team modify ghostcraft.ability.health_indicator.high color green

#team modify ghostcraft.ability.health_indicator.low seeFriendlyInvisibles false
#team modify ghostcraft.ability.health_indicator.medium seeFriendlyInvisibles false
#team modify ghostcraft.ability.health_indicator.high seeFriendlyInvisibles false


# Setup accounting scoreboard values
#scoreboard players set next_id ghostcraft.ability.pounce.id 0
#scoreboard players set next_id ghostcraft.anticheat.id 0

#scoreboard players set phase ghostcraft.master 0

# Setup default config values
#function ghostcraft:config/reset


# Setup gamerules
#gamerule doEntityDrops false
#gamerule doImmediateRespawn true
#gamerule doMobLoot false
#gamerule doMobSpawning false
#gamerule disableElytraMovementCheck true
#gamerule disableRaids true
#gamerule doDaylightCycle false
#gamerule doFireTick false
#gamerule doVinesSpread false
#gamerule doTileDrops false
#gamerule doWeatherCycle false
#gamerule doWardenSpawning false
#gamerule keepInventory true
#gamerule mobGriefing false
#gamerule naturalRegeneration false
#gamerule spawnRadius 0



