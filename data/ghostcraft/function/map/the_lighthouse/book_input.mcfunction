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
        "text":"    The Lighthouse\n\n   A map created by            "\
    },\
    {\
        "text":"Moshyn",\
        "color":"dark_green",\
        "bold":true,\
        "hover_event": {"action": "show_text","value": "Click to view Shotbow profile"},\
        "click_event": {"action": "open_url","url": "https://shotbow.net/forum/members/moshyn.1122691/"}\
    },\
    {\
        "text":"\n\nA towering, broken lighthouse stranded in the sky."\
    },\
    [\
        {\
            "text":"\n\n\n\n\n          "\
        },\
        {\
            "text":"[Vote]",\
            "color":"green",\
            "hover_event":{"action":"show_text","value": "Click to vote!"},\
            "click_event":{"action": "run_command","command": "/trigger ghostcraft.game.map_change.vote set 7"}\
        }\
    ]\
]}

