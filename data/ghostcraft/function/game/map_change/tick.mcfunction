#
#   Map Changed Tick
#   
#   Purpose: To tick the map_change game state
#
#   Input: None
#


scoreboard players enable @a ghostcraft.game.map_change.vote

scoreboard players remove timer ghostcraft.temp 1

scoreboard players operation temp ghostcraft.temp = timer ghostcraft.temp
scoreboard players operation temp ghostcraft.temp /= second ghostcraft.temp
scoreboard players operation cycle ghostcraft.temp = timer ghostcraft.temp
scoreboard players operation cycle ghostcraft.temp %= second ghostcraft.temp

execute if score timer ghostcraft.temp matches 80 run tellraw @a {"text":"Vote ends in...","color": "gold","bold": true}
execute if score cycle ghostcraft.temp matches 0 if score timer ghostcraft.temp matches ..60 run tellraw @a {"score": {"name": "temp","objective": "ghostcraft.temp"},"color": "gold","bold": true}

execute if score timer ghostcraft.temp matches ..0 run return run function ghostcraft:game/map_change/calculate_vote

execute as @a if score @s ghostcraft.game.map_change.vote matches 1.. run function ghostcraft:game/map_change/trigger

