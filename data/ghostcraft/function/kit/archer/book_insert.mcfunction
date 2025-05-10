
data modify entity @s equipment.mainhand.components."minecraft:written_book_content".pages append value {"raw":\
[\
    {\
        "text":"     -= Archer =-                         Equipment\n- Stone Sword\n- Bow\n- 32 Arrows\n- Leather Armor\n  - No helmet\n- Grappling Hook\n- Fall damage\n\n\n         "\
    },\
    {\
        "text":"[Select]",\
        "color":"dark_green",\
        "hover_event": {"action": "show_text","value": "Click to set class"},\
        "click_event": {"action": "run_command","command": "/trigger ghostcraft.trigger.class set 1"}\
    }\
]}
