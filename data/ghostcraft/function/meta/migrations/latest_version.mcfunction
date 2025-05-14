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

# Ghost chosen by weight
scoreboard objectives add ghostcraft.game.ghosthunt.ghost_kills playerKillCount
scoreboard objectives add ghostcraft.game.ghost_choice_weight dummy

# Damage indicators
scoreboard objectives add ghostcraft.game.ghosthunt.damage_indicators.current_health dummy
scoreboard objectives add ghostcraft.game.ghosthunt.damage_indicators.old_health dummy

# Suffocation immunity
scoreboard objectives add ghostcraft.kit.ghost.suffocation_immunity dummy
scoreboard players set last_id ghostcraft.kit.ghost.suffocation_immunity 1

# Two minutes, minus a couple ticks to avoid any minute-based activations
scoreboard players set game.ghosthunt.minimum_time ghostcraft.config 1198
scoreboard players set max_time ghostcraft.item.grappling_hook.in_entity_timer 20

# Item ownership
scoreboard objectives add ghostcraft.kit.random.chosen_kit dummy

# New config items
scoreboard players set kit.ghost.particle.cycle ghostcraft.config 12
scoreboard players set kit.archer.speed_sugar ghostcraft.config 3
scoreboard players set kit.ghost.teleport_crystal.count ghostcraft.config 10
scoreboard players set ability.damage_indicator.duration ghostcraft.config 20
scoreboard players set kit.support.crate.arrow.count ghostcraft.config 16
scoreboard players set kit.support.crate.speed_sugar.count ghostcraft.config 2
scoreboard players set kit.support.crate.grenade.count ghostcraft.config 2
scoreboard players set kit.support.crate.machine_bow_arrow.count ghostcraft.config 16
scoreboard players set kit.support.crate.flare.count ghostcraft.config 3

team add ghostcraft.game.ghosthunt.survivor {"text":"Survivors","color":"blue","bold":true,"italic":false}
team modify ghostcraft.game.ghosthunt.survivor color blue
team modify ghostcraft.game.ghosthunt.survivor prefix {"text":"⚔ ","color":"blue"}
team modify ghostcraft.game.ghosthunt.survivor suffix {"text":" ⚔","color":"blue"}

team add ghostcraft.game.ghosthunt.ghost {"text":"Ghosts","color":"red","bold":true,"italic":false}
team modify ghostcraft.game.ghosthunt.ghost color red
team modify ghostcraft.game.ghosthunt.ghost prefix {"text":"👻 ","color":"red"}
team modify ghostcraft.game.ghosthunt.ghost suffix {"text":" 👻","color":"red"}


gamerule showDeathMessages true


