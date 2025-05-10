#
#   Ghosthunt Ghost Role
#   
#   Purpose: To choose some ghosts from the players that have not been chosen yet
#
#   Input: None
#


# Get all weights for our ghost contenders
scoreboard players set total_ghost_choice_weight ghostcraft.temp 0
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.spectator,tag=!ghostcraft.ghost] run scoreboard players operation total_ghost_choice_weight ghostcraft.temp += @s ghostcraft.game.ghost_choice_weight
scoreboard players remove total_ghost_choice_weight ghostcraft.temp 1

# Get random number from 0 -> total_ghost_choice_weight, not right-inclusive
function ghostcraft:game/ghosthunt/macro/clear
execute store result storage ghostcraft:data macro.rng int 1 run scoreboard players get total_ghost_choice_weight ghostcraft.temp
function ghostcraft:game/ghosthunt/macro/rng with storage ghostcraft:data macro

# Save in a more readable score
scoreboard players operation target_ghost_choice_weight ghostcraft.temp = game.ghosthunt.rng ghostcraft.temp

# Choose a non-spectator, non-ghost player as a ghost
execute as @e[type=#ghostcraft:player,tag=!ghostcraft.spectator,tag=!ghostcraft.ghost,sort=random] run function ghostcraft:game/ghosthunt/role/ghost

# Recursively call if there are more ghosts to be chosen
execute if score ghosts_left ghostcraft.temp matches 1.. run function ghostcraft:game/ghosthunt/role/choose_ghost

