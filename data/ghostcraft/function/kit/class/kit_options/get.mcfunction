#
#   Get Kit Options
#   
#   Purpose: To provide a stick that has all the class dialog functions listed in it
#
#   Input: None
#


summon armor_stand ~ ~ ~ {equipment:{mainhand:{id:"minecraft:stick",components:{\
    "minecraft:item_model": "minecraft:diamond_sword",\
    "minecraft:custom_name": {text:"Change Class",italic:false},\
    "minecraft:lore": [\
        {color:"gray",italic:true,text:"Right click to change your class"}\
    ],\
    "minecraft:food":{"can_always_eat":true,nutrition:0,saturation:0},\
    "minecraft:consumable":{"animation":"block",consume_seconds:1000000,has_consume_particles:false},\
    "minecraft:custom_data":{ghostcraft:{is_kit_option:true,kit_options:[]}}}}},\
    Invisible:1b,NoGravity:1b,Tags:["ghostcraft.kit.class.kit_options.get.temp"]}

execute as @e[tag=ghostcraft.kit.class.kit_options.get.temp] run function #ghostcraft:kit/option_insert

item replace entity @s hotbar.0 from entity @e[tag=ghostcraft.kit.class.kit_options.get.temp,limit=1] weapon.mainhand

kill @e[tag=ghostcraft.kit.class.kit_options.get.temp]
