#
#   Check Grappling Hook
#   
#   Purpose: To check if I have a grappling hook and update if not
#
#   Input: None
#


# Tag relevant entities
tag @s add ghostcraft.item.grappling_hook.check_hook.player
execute as @e[type=fishing_bobber,tag=ghostcraft.item.grappling_hook.bobber] if score @s ghostcraft.uuid = @p[tag=ghostcraft.item.grappling_hook.check_hook.player] ghostcraft.uuid run tag @s add ghostcraft.item.grappling_hook.check_hook.bobber

execute unless entity @e[tag=ghostcraft.item.grappling_hook.check_hook.bobber] run function ghostcraft:item/grappling_hook/reeled_in

# Clear temp tags
tag @e[tag=ghostcraft.item.grappling_hook.check_hook.bobber] remove ghostcraft.item.grappling_hook.check_hook.bobber
tag @s remove ghostcraft.item.grappling_hook.check_hook.player

