
data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {"raw":\
[\
    {\
        "text":"     -= Soldier =-\n\nEquipment\n- Golden Sword\n- "\
    },\
    {\
        "score":\
        {\
            "name":"kit.soldier.grenade_count",\
            "objective":"ghostcraft.config"\
        }\
    },\
    {\
        "text":" Grenades\n- Iron Helmet\n- Chainmail Chestplate\n- "\
    },\
    {\
        "score":\
        {\
            "name":"kit.soldier.potion.splash.count",\
            "objective":"ghostcraft.config"\
        }\
    },\
    {\
        "text":" Splash Potion of Courage\n- "\
    },\
    {\
        "score":\
        {\
            "name":"kit.soldier.potion.normal.count",\
            "objective":"ghostcraft.config"\
        }\
    },\
    {\
        "text":" Potion of Courage\n\n\n         "\
    },\
    {\
        "text":"[Select]",\
        "color":"dark_green",\
        "hover_event": {"action": "show_text","value": "Click to set class"},\
        "click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.class set 2"}\
    }\
]}
