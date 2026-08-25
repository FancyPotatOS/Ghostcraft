#
#   Set Basic Vault
#   
#   Purpose: To set a basic vault where the execution position is
#
#   Input: None
#


setblock ~ ~ ~ minecraft:vault strict

data modify block ~ ~ ~ config.key_item set value \
{\
    id:"minecraft:trial_key",\
    count:1,\
    components: {\
        "minecraft:custom_name": {"text":"Token","italic":false,"color":"aqua"},\
        "minecraft:lore": [\
            {"text":"Cash this in at a Trial Vault!","color":"white"},\
            [{"text":"Must be used within 60 seconds","color":"gray"}]\
        ],\
        "minecraft:custom_model_data": {\
            "strings": [\
                "basic_token"\
            ]\
        },\
        "minecraft:custom_data": {\
            "ghostcraft": {\
                "type": "vault.basic_token"\
            }\
        }\
    }\
}

data modify block ~ ~ ~ config.loot_table set value "ghostcraft:vault/basic"
data modify block ~ ~ ~ config.override_loot_table_to_display set value "ghostcraft:vault/basic_visual"

