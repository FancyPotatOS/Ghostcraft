#
#   Game Stop
#   
#   Purpose: To tear down any specific values related to the game
#
#   Input: None
#


function ghostcraft:game/ghosthunt/survivor_hurt_ghost/reset

bossbar set minecraft:ghostcraft.game.time visible false
tag @a[tag=!ghostcraft.spectator] remove ghostcraft.spectating
scoreboard players reset @a ghostcraft.game.ghosthunt.ghost_kills

tp @e[tag=ghostcraft.game.ghosthunt.anti_camp.vex] 0 -200 0
kill @e[tag=ghostcraft.game.ghosthunt.anti_camp.vex]

tag @e[type=#ghostcraft:player] remove ghostcraft.game.ghosthunt.role.ghost
tag @e[type=#ghostcraft:player] remove ghostcraft.game.ghosthunt.role.survivor

# Clean the map of remaining stuff
execute in ghostcraft:empty run function ghostcraft:game/clean_map

