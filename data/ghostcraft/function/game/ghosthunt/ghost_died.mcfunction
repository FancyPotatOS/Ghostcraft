#
#   Ghost Died
#   
#   Purpose: To run logic for when a ghost died
#
#   Input: None
#


# Tell everybody if one ghost is left
scoreboard players set ghosts_left ghostcraft.temp 0
execute as @e[type=#ghostcraft:player,tag=ghostcraft.ghost] run scoreboard players add ghosts_left ghostcraft.temp 1
execute if score ghosts_left ghostcraft.temp matches 1 run tellraw @a[tag=ghostcraft.survivor] {"color":"green","bold":true,"text":"One ghost left!"}
execute if score ghosts_left ghostcraft.temp matches 1 run tellraw @a[tag=ghostcraft.ghost] {"color":"red","bold":true,"text":"You are the last ghost..."}
execute if score ghosts_left ghostcraft.temp matches 1 run tellraw @a[tag=ghostcraft.spectator] {"color":"gray","italic":true,"text":"One ghost left!"}

# More than one left
execute if score ghosts_left ghostcraft.temp matches 2.. run tellraw @a {"text":"A ghost died!"}

# Clear all ghosts of their kill count since a ghost died
scoreboard players reset @e[type=#ghostcraft:player,tag=ghostcraft.ghost] ghostcraft.game.ghosthunt.ghost_kills
