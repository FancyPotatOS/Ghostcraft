#
#   Sanctum Book Input
#   
#   Purpose: To add a page to the held book from an armor stand about this map
#
#   Input: None
#


data modify entity @s HandItems[0].components."minecraft:written_book_content".pages append value {raw:'[{"text":"         Sanctum\\n\\n   A map created by\\n     "},{"text":"Subject_617","color":"dark_green","bold":true,"hoverEvent": {"action": "show_text","contents": "Click to view Shotbow profile"},"clickEvent": {"action": "open_url","value": "https://shotbow.net/forum/members/subject_617.1984/"}},{"text":"\\n\\nThis is a dark, claustrophobic map with smaller hallways.\\n\\nBe careful where you stray!\\n\\n\\n          "},{"text":"[Vote]","color":"green","hoverEvent":{"action":"show_text","contents": "Click to vote!"},"clickEvent":{"action": "run_command","value": "/trigger ghostcraft.game.map_change.vote set 3"}}]'}

