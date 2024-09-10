#
#   Mid Game Player Check
#   
#   Purpose: To check the number of players in their roles to determine the game state
#
#   Input: None
#

scoreboard players set ghosthunt.mid_game_player_check.ended ghostcraft.temp 1

# Check number of survivors
scoreboard players set survivor ghostcraft.temp 0
execute as @e[tag=ghostcraft.survivor] run scoreboard players add survivor ghostcraft.temp 1

execute if score survivor ghostcraft.temp matches 0 run return run function ghostcraft:game/ghosthunt/endings/ghosts_win

# Check number of ghosts
scoreboard players set ghost ghostcraft.temp 0
execute as @e[tag=ghostcraft.ghost] run scoreboard players add ghost ghostcraft.temp 1

execute if score ghost ghostcraft.temp matches 0 run return run function ghostcraft:game/ghosthunt/endings/survivors_win


scoreboard players set ghosthunt.mid_game_player_check.ended ghostcraft.temp 0
