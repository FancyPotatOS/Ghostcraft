#
#   Sanctum Book Input
#   
#   Purpose: To add a page to the held book from an armor stand about this map
#
#   Input: None
#


data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {raw:[{"text":"      Keterbrandt                Library               A map created by            "},{"text":"Moshyn","color":"dark_green","bold":true,"hover_event": {"action": "show_text","value": "Click to view Shotbow profile"},"click_event": {"action": "open_url","url": "https://shotbow.net/forum/members/moshyn.1122691/"}},{"text":"                                       A large library with a grand atrium in the middle. It has large hallways and lots of room to maneuver.                                                                          "},{"text":"[Vote]","color":"green","hover_event":{"action":"show_text","value": "Click to vote!"},"click_event":{"action": "run_command","command": "/trigger ghostcraft.game.map_change.vote set 4"}}]}

