#
#   Minute Left
#   
#   Purpose: To perform all logic for when a minute is left
#
#   Input: None
#


tellraw @a [{"text":"The ghost can now track survivors...","color":"#538999","bold": true,"italic": true}]
loot give @a[tag=ghostcraft.ghost] loot ghostcraft:item/ghost_compass/ghost_compass

