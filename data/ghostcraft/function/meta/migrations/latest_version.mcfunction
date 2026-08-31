#
#   Migration File v3.0
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


# Early migration stop if right version
execute if score version ghostcraft.master matches 8 run return 0

# Apply last migration
execute unless score version ghostcraft.master matches 7.. run function ghostcraft:meta/migrations/migration_v6

tellraw @a ["",{"text":"[GhostCraft Datapack] - Setting up v3.0","bold":true,"color":"dark_blue"}," - Setup"]

# Set the version
scoreboard players set version ghostcraft.master 8


# 26.2 (v3.0) updates
data merge storage ghostcraft:data \
{\
    users:{},\
    kit: {\
        ghost: {\
            cycles: {\
                "Scare": {\
                    "next": "CraftingTable",\
                    "display": "Scare",\
                    "sprite": "ghostcraft:item/gui/kits/ghost/bone"\
                },\
                "CraftingTable": {\
                    "next": "Blink",\
                    "display": "Crafting Table",\
                    "sprite": "ghostcraft:item/gui/kits/ghost/crafting_table"\
                },\
                "Blink": {\
                    "next": "FragGrenade",\
                    "display": "Blink",\
                    "sprite": "ghostcraft:item/gui/kits/ghost/ender_eye"\
                },\
                "FragGrenade": {\
                    "next": "Flashbang",\
                    "display": "Frag Grenade",\
                    "sprite": "ghostcraft:item/gui/kits/ghost/magma_cream"\
                },\
                "Flashbang": {\
                    "next": "PoisonGrenade",\
                    "display": "Flashbang",\
                    "sprite": "ghostcraft:item/gui/kits/ghost/nether_star"\
                },\
                "PoisonGrenade": {\
                    "next": "Scare",\
                    "display": "Poison Grenade",\
                    "sprite": "ghostcraft:item/gui/kits/ghost/ghast_tear"\
                }\
            }\
        }\
    }\
}

scoreboard objectives add ghostcraft.token.expiry_time dummy
scoreboard objectives add ghostcraft.map.task.contributed dummy

scoreboard objectives add ghostcraft.kit.ghost.cycle_nth_trigger trigger
scoreboard players set options ghostcraft.kit.ghost.cycle_nth_trigger 1

team modify ghostcraft.game.ghosthunt.survivor nametagVisibility hideForOtherTeams
team modify ghostcraft.game.ghosthunt.survivor seeFriendlyInvisibles true
team modify ghostcraft.game.ghosthunt.survivor collisionRule never

team modify ghostcraft.game.ghosthunt.ghost nametagVisibility hideForOtherTeams
team modify ghostcraft.game.ghosthunt.ghost seeFriendlyInvisibles true
team modify ghostcraft.game.ghosthunt.ghost collisionRule never


scoreboard players reset game.ghosthunt.tasks.enabled ghostcraft.config
scoreboard players reset game.ghosthunt.tasks.map_supported ghostcraft.config
scoreboard players set game.tasks.enabled ghostcraft.master 1
scoreboard players set game.tasks.enabled ghostcraft.config 1

scoreboard objectives add ghostcraft.effect.ghost.hurt_effect dummy
scoreboard objectives add ghostcraft.effect.ghost.hurt_sound dummy

scoreboard objectives remove ghostcraft.logic.login

# Disable command block output!
gamerule command_block_output false

# Initialize config for warehouse tasks
function ghostcraft:map/warehouse/tasks/reset_config

