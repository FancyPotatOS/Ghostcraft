
data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {"raw":\
[\
    {\
        "text":"     -= Archer =-\n\nEquipment\n- Stone Sword\n- Bow\n- "\
    },\
    {\
        "score":\
        {\
            "name":"kit.archer.arrow_count",\
            "objective":"ghostcraft.config"\
        }\
    },\
    {\
        "text":" Arrows\n- Leather Armor\n  - No helmet\n- Grappling Hook\n- "\
    },\
    {\
        "score":\
        {\
            "name":"kit.archer.speed_sugar",\
            "objective":"ghostcraft.config"\
        }\
    },\
    {\
        "text":" Speed Sugar\n- No fall damage\n\n         "\
    },\
    {\
        "text":"[Select]",\
        "color":"dark_green",\
        "hover_event": {"action": "show_text","value": "Click to set class"},\
        "click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.class set 1"}\
    }\
]}
