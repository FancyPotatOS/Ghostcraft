
data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {"raw":\
[\
    {\
        "text":"  -= Machine Bow =-\n\nEquipment\n- Stone Hoe\n- Machine Bow\n- "\
    },\
    {\
        "score":\
        {\
            "name":"kit.machine_bow.arrow_count",\
            "objective":"ghostcraft.config"\
        }\
    },\
    {\
        "text":" Arrows\n- Leather Chestplate\n- Diamond Boots\n\n\n\n\n         "\
    },\
    {\
        "text":"[Select]",\
        "color":"dark_green",\
        "hover_event": {"action": "show_text","value": "Click to set class"},\
        "click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.class set 5"}\
    }\
]}
