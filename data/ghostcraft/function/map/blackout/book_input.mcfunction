#
#   Blackout Book Input
#   
#   Purpose: To add a page to the held book from an armor stand about this map
#
#   Input: None
#


data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {raw:[{"text":"         Blackout                                     This is a classic map from the original 2013 GhostCraft.                                           It is based on the Halo 3 map with the same name!                                                                                                                 "},{"text":"[Vote]","color":"green","hover_event":{"action":"show_text","value": "Click to vote!"},"click_event":{"action": "run_command","command": "/trigger ghostcraft.game.map_change.vote set 1"}}]}

