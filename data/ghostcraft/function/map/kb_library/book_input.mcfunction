#
#   Sanctum Book Input
#   
#   Purpose: To add a page to the held book from an armor stand about this map
#
#   Input: None
#


data modify entity @s HandItems[0].components."minecraft:written_book_content".pages append value {raw:'[{"text":"      Keterbrandt\\n         Library\\n\\n   A map created by\\n         "},{"text":"Moshyn","color":"dark_green","bold":true,"hoverEvent": {"action": "show_text","contents": "Click to view Shotbow profile"},"clickEvent": {"action": "open_url","value": "https://shotbow.net/forum/members/moshyn.1122691/"}},{"text":"\\n\\nA large library with a grand atrium in the middle. It has large hallways and lots of room to maneuver.\\n\\n\\n          "},{"text":"[Vote]","color":"green","hoverEvent":{"action":"show_text","contents": "Click to vote!"},"clickEvent":{"action": "run_command","value": "/trigger ghostcraft.game.map_change.vote set 4"}}]'}

