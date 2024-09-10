#
#   Grappling Hook Initialize
#   
#   Purpose: To initialize the bobber of a grappling hook
#
#   Input: None
#


tag @s add ghostcraft.item.grappling_hook.bobber
tag @s add ghostcraft.item.grappling_hook.accounted

# Save my UUID as the caster's to link
execute store result score @s ghostcraft.uuid run data get entity @p[tag=ghostcraft.item.grappling_hook.caster] UUID[0]

