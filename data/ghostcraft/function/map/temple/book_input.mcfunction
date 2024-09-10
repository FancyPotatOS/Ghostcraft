#
#   Temple Book Input
#   
#   Purpose: To add a page to the held book from an armor stand about this map
#
#   Input: None
#


data modify entity @s HandItems[0].components."minecraft:written_book_content".pages append value {raw:'[{"text":"\\n      [Temple]\\n\\nAnother classic map from 2013. Origins of the map is unknown, but it was part of the original release.\\n\\n\\n\\n\\n          "},{"text":"[Vote]","color":"green","clickEvent":{"action": "run_command","value": "/trigger ghostcraft.game.map_change.vote set 2"}}]'}

