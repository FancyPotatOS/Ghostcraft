#
#   Ghosthunt Start
#   
#   Purpose: To set up any specific values related to the lobby
#
#   Input: None
#


execute unless function ghostcraft:game/player_check run return run function ghostcraft:game/errors/not_enough_players

# Choose roles and kit out
function ghostcraft:game/ghosthunt/role/assign
function ghostcraft:game/ghosthunt/role/kit

function ghostcraft:game/ghosthunt/role/tp

playsound ghostcraft:game_start master @a

scoreboard players remove map.change_cooldown ghostcraft.temp 1

effect give @a saturation infinite 1 true

execute as @a at @s run playsound ghostcraft:game_start master @s ~ ~ ~ 1 1 1

scoreboard players operation game_timer ghostcraft.temp = game.ghosthunt.game_time ghostcraft.config
scoreboard players set timer ghostcraft.temp 0
scoreboard players set timer_cycle ghostcraft.temp 20

execute store result bossbar ghostcraft.game.time max run scoreboard players get game.ghosthunt.game_time ghostcraft.config
bossbar set minecraft:ghostcraft.game.time visible true

