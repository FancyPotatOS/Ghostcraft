#
#   Show Health
#   
#   Purpose: To tellraw this entity's health to all players
#
#   Input: None
#


tellraw @a {text:" = Remaining Health = "}

execute as @e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.role.ghost] run function ghostcraft:game/ghosthunt/display/show_health

