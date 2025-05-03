#
#   Get Controls
#   
#   Purpose: To give the player the controls book
#
#   Input: None
#


give @s written_book[written_book_content={author:"FancyPotatOS",title:"Game Controls",pages:[[{"text":"    = GhostCraft =                                         "},{"color":"dark_green","text": "[Start Game]","hover_event": {"action": "show_text","value": "Click to start"},"click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.game set 1"}},{"text":"                "},{"color":"dark_green","text": "[Spectate]","hover_event": {"action": "show_text","value": "Click to spectate"},"click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.game set 2"}},{"text":"            "},{"color":"dark_green","text": "[Stop Spectating]","hover_event": {"action": "show_text","value": "Click to play"},"click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.game set 3"}},{"text":"         "},{"color":"dark_green","text": "[Toggle Music]","hover_event": {"action": "show_text","value": "Click to toggle music"},"click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.game set 5"}},{"text":"            "},{"color":"blue","text": "[Change Map]","hover_event": {"action": "show_text","value": "Click to change map"},"click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.game set 4"}}]]}] 1

