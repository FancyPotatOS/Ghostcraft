#
#   Ghosthunt Kit
#   
#   Purpose: To provide players their kit
#
#   Input: None
#


execute as @e[type=#ghostcraft:player,tag=ghostcraft.spectator] run function ghostcraft:kit/spectator/give
execute as @e[type=#ghostcraft:player,tag=ghostcraft.survivor] run function ghostcraft:kit/give
execute as @e[type=#ghostcraft:player,tag=ghostcraft.ghost] run function ghostcraft:kit/ghost/give

