#
#   Spooky Mansion Book Input
#   
#   Purpose: To add a page to the held book from an armor stand about this map
#
#   Input: None
#


data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {raw:\
[\
    {\
        "text":"    Spooky Mansion\n\n   A map created by        "\
    },\
    {\
        "text":"PaySafeKaart",\
        "color":"dark_green",\
        "bold":true,\
        "hover_event": {"action": "show_text","value": "Click to view Shotbow profile"},\
        "click_event": {"action": "open_url","url": "https://shotbow.net/forum/members/paysafekaart.3689119/"}\
    },\
    {\
        "text":"\n\nA sandy two-story mansion surrounded by cliffs on every side. There spans a dark, webbed cave underneath."\
    },\
    [\
        {\
            "text":"\n\n          "\
        },\
        {\
            "text":"[Vote]",\
            "color":"green",\
            "hover_event":{"action":"show_text","value": "Click to vote!"},\
            "click_event":{"action": "run_command","command": "/trigger ghostcraft.game.map_change.vote set 9"}\
        }\
    ]\
]}

