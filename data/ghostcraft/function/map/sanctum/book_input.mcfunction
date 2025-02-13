#
#   Sanctum Book Input
#   
#   Purpose: To add a page to the held book from an armor stand about this map
#
#   Input: None
#


data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {raw:[{"text":"         Sanctum                                          A map created by         "},{"text":"Subject_617","color":"dark_green","bold":true,"hover_event": {"action": "show_text","value": "Click to view Shotbow profile"},"click_event": {"action": "open_url","url": "https://shotbow.net/forum/members/subject_617.1984/"}},{"text":"                                 This is a dark, claustrophobic map with smaller hallways.                                Be careful where you stray!                                                             "},{"text":"[Vote]","color":"green","hover_event":{"action":"show_text","value": "Click to vote!"},"click_event":{"action": "run_command","command": "/trigger ghostcraft.game.map_change.vote set 3"}}]}

