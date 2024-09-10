#
#   Tag Owner
#   
#   Purpose: To tag the owner of the bobber with the tag 'ghostcraft.item.grappling_hook.owner'
#
#   Input: None
#


tag @s add ghostcraft.item.grappling_hook.tag_caster.bobber

execute as @a if score @s ghostcraft.uuid = @e[type=fishing_bobber,tag=ghostcraft.item.grappling_hook.tag_caster.bobber,limit=1] ghostcraft.uuid run tag @s add ghostcraft.item.grappling_hook.owner

tag @s remove ghostcraft.item.grappling_hook.tag_caster.bobber

