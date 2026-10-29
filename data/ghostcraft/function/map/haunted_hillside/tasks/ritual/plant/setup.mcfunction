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
            block_state:{id:"minecraft:rose_bush",properties:{half:"upper"}},\
            transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]\
        },\
        {\
            id:"minecraft:block_display",\
            Tags:[ghostcraft.map,ghostcraft.map.haunted_hillside.tasks.ritual.plant.block_display],\
            block_state:{id:"minecraft:dandelion",properties:{}},\
            transformation:[1.0000f,0.0000f,0.0000f,0.3125f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,-0.0625f,0.0000f,0.0000f,0.0000f,1.0000f]\
        },\
        {\
            id:"minecraft:block_display",\
            Tags:[ghostcraft.map,ghostcraft.map.haunted_hillside.tasks.ritual.plant.block_display],\
            block_state:{id:"minecraft:cornflower",properties:{}},\
            transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,-0.3750f,0.0000f,0.0000f,0.0000f,1.0000f]\
        },\
        {\
            id:"minecraft:block_display",\
            Tags:[ghostcraft.map,ghostcraft.map.haunted_hillside.tasks.ritual.plant.block_display],\
            block_state:{id:"minecraft:lilac",properties:{half:"lower"}},\
            transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,-0.2500f,0.0000f,0.0000f,1.0000f,-0.0625f,0.0000f,0.0000f,0.0000f,1.0000f]\
        },\
        {\
            id:"minecraft:block_display",\
            Tags:[ghostcraft.map,ghostcraft.map.haunted_hillside.tasks.ritual.plant.block_display],\
            block_state:{id:"minecraft:lily_of_the_valley",properties:{}},\
            transformation:[0.5000f,0.0000f,0.0000f,0.2500f,0.0000f,0.5000f,0.0000f,0.0000f,0.0000f,0.0000f,0.5000f,0.6250f,0.0000f,0.0000f,0.0000f,1.0000f]\
        },\
        {\
            id:"minecraft:block_display",\
            Tags:[ghostcraft.map,ghostcraft.map.haunted_hillside.tasks.ritual.plant.block_display],\
            block_state:{id:"minecraft:orange_tulip",properties:{}},\
            transformation:[1.0000f,0.0000f,0.0000f,-0.3125f,0.0000f,1.0000f,0.0000f,-0.2500f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]\
        }\
    ]\
}

