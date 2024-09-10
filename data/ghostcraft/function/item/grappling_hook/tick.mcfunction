#
#   Grappling Hook Tick
#   
#   Purpose: To update all relevant grappling hook data
#
#   Input: None
#


execute as @e[type=fishing_bobber,tag=ghostcraft.item.grappling_hook.bobber] at @s run function ghostcraft:item/grappling_hook/save_bobber_data

execute as @a[tag=ghostcraft.item.grappling_hook.casting] run function ghostcraft:item/grappling_hook/check_hook

