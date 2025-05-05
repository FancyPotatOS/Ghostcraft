#
#   Haunted Ruins Book Input
#   
#   Purpose: To add a page to the held book from an armor stand about this map
#
#   Input: None
#


data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {raw:\
[\
    {\
        "text":"         Haunted\n           Ruins\n   A map created by           "\
    },\
    {\
        "text":"Shine9000",\
        "color":"dark_green",\
        "bold":true,\
        "hover_event": {"action": "show_text","value": "Click to view Shotbow profile"},\
        "click_event": {"action": "open_url","url": "https://shotbow.net/forum/members/shine9000.506077/"}\
    },\
    {\
        "text":"\n\nA complex map with lots of decorated tunnels jungle-inspired architecture. Watch your footing!"\
    },\
    [\
        {\
            "text":"\n\n          "\
        },\
        {\
            "text":"[Vote]",\
            "color":"green",\
            "hover_event":{"action":"show_text","value": "Click to vote!"},\
            "click_event":{"action": "run_command","command": "/trigger ghostcraft.game.map_change.vote set 5"}\
        }\
    ]\
]}

