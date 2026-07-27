#
#   Get Controls
#   
#   Purpose: To give the player the controls book
#
#   Input: None
#


item replace entity @s hotbar.1 with written_book[written_book_content={author:"FancyPotatOS",title:"Game Controls",pages:\
[\
    [\
        {\
            "text":"    = GhostCraft =\n\n"\
        },\
        {\
            "color":"dark_green",\
            "text": "      [Start Game]\n",\
            "hover_event": {"action": "show_text","value": "Click to start"},\
            "click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.game set 1"}\
        },\
        {\
            "color":"blue",\
            "text": "      [Change Map]\n\n",\
            "hover_event": {"action": "show_text","value": "Click to change map"},\
            "click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.game set 4"}\
        },\
        {\
            "color":"dark_green",\
            "text": "       [Spectate]\n",\
            "hover_event": {"action": "show_text","value": "Click to spectate"},\
            "click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.game set 2"}\
        },\
        {\
            "color":"dark_green",\
            "text": "   [Stop Spectating]\n",\
            "hover_event": {"action": "show_text","value": "Click to play"},\
            "click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.game set 3"}\
        },\
        {\
            "color":"dark_green",\
            "text": "     [Toggle Music]\n",\
            "hover_event": {"action": "show_text","value": "Click to toggle music"},\
            "click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.game set 5"}\
        },\
        {\
            "color":"dark_green",\
            "text": "  [Toggle Auto-Start]",\
            "hover_event": {"action": "show_text","value": "Click to toggle game auto-starting"},\
            "click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.game set 6"}\
        }\
    ]\
]}] 1

