#
#   Blackout Book Input
#   
#   Purpose: To add a page to the held book from an armor stand about this map
#
#   Input: None
#


data modify entity @s HandItems[0].components."minecraft:written_book_content".pages append value {raw:'[{"text":"         Blackout\\n\\nThis is a classic map from the original 2013 GhostCraft.\\n\\nIt is based on the Halo 3 map with the same name!\\n\\n\\n\\n\\n          "},{"text":"[Vote]","color":"green","hoverEvent":{"action":"show_text","contents": "Click to vote!"},"clickEvent":{"action": "run_command","value": "/trigger ghostcraft.game.map_change.vote set 1"}}]'}

