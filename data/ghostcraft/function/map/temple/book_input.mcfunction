#
#   Temple Book Input
#   
#   Purpose: To add a page to the held book from an armor stand about this map
#
#   Input: None
#


data modify entity @s HandItems[0].components."minecraft:written_book_content".pages append value {raw:'[{"text":"          Temple\\n\\nA classic map from the 2013 Shotbow era.\\n\\nI couldn\'t find the original creators or files, so it was created based on old videos.\\n\\n\\n\\n          "},{"text":"[Vote]","color":"green","hoverEvent":{"action":"show_text","contents": "Click to vote!"},"clickEvent":{"action": "run_command","value": "/trigger ghostcraft.game.map_change.vote set 2"}}]'}

