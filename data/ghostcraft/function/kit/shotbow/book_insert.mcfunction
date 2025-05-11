
data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {"raw":\
[\
    {\
        "text":"     -= Shotbow =-\n\nEquipment\n- Stone Shovel\n- Shotbow\n- "\
    },\
    {\
        "score":\
        {\
            "name":"kit.shotbow.arrow_count",\
            "objective":"ghostcraft.config"\
        }\
    },\
    {\
        "text":" Arrows\n- Leather Armor\n- No helmet\n- No boots\n\n\n\n         "\
    },\
    {\
        "text":"[Select]",\
        "color":"dark_green",\
        "hover_event": {"action": "show_text","value": "Click to set class"},\
        "click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.class set 4"}\
    }\
]}
