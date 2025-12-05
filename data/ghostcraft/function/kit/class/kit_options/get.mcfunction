#
#   Get Kit Options
#   
#   Purpose: To provide a stick that has all the class dialog functions listed in it
#
#   Input: None
#

data modify storage ghostcraft:data kit_options set value []

function #ghostcraft:kit/option_insert

item replace entity @s hotbar.0 with minecraft:stick[\
    minecraft:lore=[{color:"gray",italic:true,text:"Right click to change your class"}],\
    minecraft:item_model="minecraft:diamond_sword",\
    minecraft:custom_name={text:"Change Class",italic:false},\
    minecraft:food={"can_always_eat":true,nutrition:0,saturation:0},\
    minecraft:consumable={"animation":"block",consume_seconds:1000000,has_consume_particles:false},\
    minecraft:custom_data={ghostcraft:{is_kit_option:true,kit_options:[]}}\
]

item modify entity @s hotbar.0 ghostcraft:game/lobby/replace_kit_options
