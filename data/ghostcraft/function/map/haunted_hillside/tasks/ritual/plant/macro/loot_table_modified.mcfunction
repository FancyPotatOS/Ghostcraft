#
#   Loot Table Modified
#   
#   Purpose: To give a plant with provided plant id
#
#   Input: {plant_id: int, required_plants: int}
#


$loot give @s loot {pools:[{rolls:1,entries:[\
    {\
        type:"minecraft:loot_table",value:"ghostcraft:map/haunted_hillside/tasks/ritual/plant",\
        functions:[\
            {function: "minecraft:set_custom_data",tag:{"ghostcraft":{"subtype":$(plant_id)}}},\
            {"function":"minecraft:set_lore","lore":[[{"text":"Plant ","color":"gray"},{"text":"#$(plant_id)","color":"green"},{"text":"/","color":"gray"},{"text":"$(required_plants)","color":"green"}]],"mode":"replace_all"}\
        ]\
    }\
]}]}

