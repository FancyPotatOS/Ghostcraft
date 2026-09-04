#
#   Plant Setup
#   
#   Purpose: To setup this entity/location as a plant
#
#   Input: None
#


# Max plant count
scoreboard players remove plant_count ghostcraft.temp 1
execute if score plant_count ghostcraft.temp matches ..-1 run return 0

# Add tags
tag @s add ghostcraft.map.haunted_hillside.tasks.ritual.plant.chosen

# Save id
execute store result entity @s data.plant_id int 1 run scoreboard players get plant_count ghostcraft.temp

summon interaction ~ ~-0.5 ~ {width:1,height:1,Tags:[ghostcraft.map,ghostcraft.map.haunted_hillside.tasks.ritual.plant.interaction]}

summon block_display ~-0.5 ~-0.5 ~-0.5 {Tags:[ghostcraft.map,ghostcraft.map.haunted_hillside.tasks.ritual.plant.block_display],\
    Passengers:[\
        {\
            id:"minecraft:block_display",\
            Tags:[ghostcraft.map,ghostcraft.map.haunted_hillside.tasks.ritual.plant.block_display],\
            block_state:{Name:"minecraft:rose_bush",Properties:{half:"upper"}},\
            transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]\
        },\
        {\
            id:"minecraft:block_display",\
            Tags:[ghostcraft.map,ghostcraft.map.haunted_hillside.tasks.ritual.plant.block_display],\
            block_state:{Name:"minecraft:dandelion",Properties:{}},\
            transformation:[1.0000f,0.0000f,0.0000f,0.3125f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,-0.0625f,0.0000f,0.0000f,0.0000f,1.0000f]\
        },\
        {\
            id:"minecraft:block_display",\
            Tags:[ghostcraft.map,ghostcraft.map.haunted_hillside.tasks.ritual.plant.block_display],\
            block_state:{Name:"minecraft:cornflower",Properties:{}},\
            transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,-0.3750f,0.0000f,0.0000f,0.0000f,1.0000f]\
        },\
        {\
            id:"minecraft:block_display",\
            Tags:[ghostcraft.map,ghostcraft.map.haunted_hillside.tasks.ritual.plant.block_display],\
            block_state:{Name:"minecraft:lilac",Properties:{half:"lower"}},\
            transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,-0.2500f,0.0000f,0.0000f,1.0000f,-0.0625f,0.0000f,0.0000f,0.0000f,1.0000f]\
        },\
        {\
            id:"minecraft:block_display",\
            Tags:[ghostcraft.map,ghostcraft.map.haunted_hillside.tasks.ritual.plant.block_display],\
            block_state:{Name:"minecraft:lily_of_the_valley",Properties:{}},\
            transformation:[0.5000f,0.0000f,0.0000f,0.2500f,0.0000f,0.5000f,0.0000f,0.0000f,0.0000f,0.0000f,0.5000f,0.6250f,0.0000f,0.0000f,0.0000f,1.0000f]\
        },\
        {\
            id:"minecraft:block_display",\
            Tags:[ghostcraft.map,ghostcraft.map.haunted_hillside.tasks.ritual.plant.block_display],\
            block_state:{Name:"minecraft:orange_tulip",Properties:{}},\
            transformation:[1.0000f,0.0000f,0.0000f,-0.3125f,0.0000f,1.0000f,0.0000f,-0.2500f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]\
        }\
    ]\
}

