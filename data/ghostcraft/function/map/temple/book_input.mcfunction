#
#   Temple Book Input
#   
#   Purpose: To add a page to the held book from an armor stand about this map
#
#   Input: None
#


data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {raw:[{"text":"          Temple                                        A classic map from the 2013 Shotbow era.                                   I couldn't find the original creators or files, so it was created based on old videos.                                                                                         "},{"text":"[Vote]","color":"green","hover_event":{"action":"show_text","value": "Click to vote!"},"click_event":{"action": "run_command","command": "/trigger ghostcraft.game.map_change.vote set 2"}}]}

