#
#   Survivor Died
#   
#   Purpose: To run logic for when a survivor died
#
#   Input: None
#


tag @s add ghostcraft.game.ghosthunt.player.died
execute as @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.player_marker] if score @s ghostcraft.uuid = @e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.player.died,limit=1,sort=nearest] ghostcraft.uuid run kill @s
tag @s remove ghostcraft.game.ghosthunt.player.died

# Tell everybody if one survivor is left
scoreboard players set survivors_left ghostcraft.temp -1
execute as @e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.role.survivor] run scoreboard players add survivors_left ghostcraft.temp 1
execute if score survivors_left ghostcraft.temp matches 1 run tellraw @a[tag=ghostcraft.game.ghosthunt.role.survivor] {"color":"red","bold":true,"text":"You are the last survivor."}
execute if score survivors_left ghostcraft.temp matches 1 run tellraw @a[tag=ghostcraft.ghost] {"color":"green","bold":true,"text":"One survivor left!"}
execute if score survivors_left ghostcraft.temp matches 1 run tellraw @a[tag=ghostcraft.spectator] {"color":"gray","italic":true,"text":"One survivor left!"}

# More than one left
execute if score survivors_left ghostcraft.temp matches 2.. run tellraw @a {"text":"A survivor died!"}

execute as @e[type=#ghostcraft:player,tag=ghostcraft.ghost] if score @s ghostcraft.game.ghosthunt.ghost_kills matches 1.. at @s run function ghostcraft:game/ghosthunt/ensure_minimum_timer
scoreboard players reset @a ghostcraft.game.ghosthunt.ghost_kills


