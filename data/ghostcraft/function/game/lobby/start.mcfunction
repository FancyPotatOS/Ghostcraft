#
#   Lobby Start
#   
#   Purpose: To set up any specific values related to the lobby
#
#   Input: None
#


execute as @e[type=#ghostcraft:player] run function ghostcraft:game/lobby/player_setup

stopsound @a
execute as @a run function ghostcraft:game/lobby/music/play

execute unless score coming_from_lobby ghostcraft.temp matches 1 run title @a title {"text":""}
execute unless score coming_from_lobby ghostcraft.temp matches 1 run title @a subtitle {"text":""}
execute unless score coming_from_lobby ghostcraft.temp matches 1 run title @a actionbar {"text":""}

scoreboard players reset coming_from_lobby ghostcraft.temp
