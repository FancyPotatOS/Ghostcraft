
data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {"raw":\
[\
    {\
        "text":"     -= Hunter =-\n\nEquipment\n- Netherite Pickaxe\n- Tracking Compass\n- "\
    },\
    {\
        "score":\
        {\
            "name":"kit.hunter.flare_count",\
            "objective":"ghostcraft.config"\
        }\
    },\
    {\
        "text":" Flares\n- "\
    },\
    {\
        "score":\
        {\
            "name":"kit.hunter.trap.count",\
            "objective":"ghostcraft.config"\
        }\
    },\
    {\
        "text":" Traps\n- Diamond Helmet\n- Golden Boots\n\n\n\n         "\
    },\
    {\
        "text":"[Select]",\
        "color":"dark_green",\
        "hover_event": {"action": "show_text","value": "Click to set class"},\
        "click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.class set 6"}\
    }\
]}
