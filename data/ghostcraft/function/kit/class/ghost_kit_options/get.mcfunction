#
#   Get Kit Options
#   
#   Purpose: To provide a stick that has all the class dialog functions listed in it
#
#   Input: None
#


give @s stick[\
    minecraft:lore=[{color:"gray",italic:true,text:"Right click to modify your Ghost"}],\
    minecraft:item_model="minecraft:ender_eye",\
    minecraft:custom_name={text:"Edit Ghost",italic:false},\
    minecraft:food={"can_always_eat":true,nutrition:0,saturation:0},\
    minecraft:consumable={"animation":"block",consume_seconds:1000000,has_consume_particles:false},\
    minecraft:custom_data={ghostcraft:{is_ghost_kit_option:true}}\
]

