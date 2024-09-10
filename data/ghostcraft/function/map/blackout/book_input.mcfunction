#
#   Blackout Book Input
#   
#   Purpose: To add a page to the held book from an armor stand about this map
#
#   Input: None
#


data modify entity @s HandItems[0].components."minecraft:written_book_content".pages append value {raw:'[{"text":"\\n      [BLACKOUT]\\n\\nThis is a classic map from the original 2013 GhostCraft. It is based on the Halo 3 map with the same name!\\n\\n\\n\\n          "},{"text":"[Vote]","color":"green","clickEvent":{"action": "run_command","value": "/trigger ghostcraft.game.map_change.vote set 1"}}]'}

