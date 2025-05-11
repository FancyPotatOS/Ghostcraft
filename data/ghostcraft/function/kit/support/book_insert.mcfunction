
data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {"raw":\
[\
    {\
        "text":"     -= Support =-                          Equipment\n- Stone Sword\n- Tracking Compass\n- "\
    },\
    {\
        "score":\
        {\
            "name":"kit.support.potion.count",\
            objective:"ghostcraft.config"\
        }\
    },\
    {\
        "text":" Instant Health II Splash Potions\n  - Infinite I Potion\n- Chainmail Helmet+Boots\n- Leather Chestplate+Leggings\n         "\
    },\
        {\
            "text":"[Select]",\
            "color":"dark_green",\
            "hover_event": {"action": "show_text","value": "Click to set class"},\
            "click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.class set 3"}\
        }\
    ]}
