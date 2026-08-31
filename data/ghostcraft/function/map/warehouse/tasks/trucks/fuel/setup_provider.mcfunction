

tag @s add ghostcraft.map.warehouse.trucks.fuel_provider.instance

summon minecraft:text_display ~-0.2 ~0.5 ~-0.2 \
{\
    Tags:[ghostcraft.map,ghostcraft.map.warehouse,ghostcraft.map.warehouse.kill_on_stop],\
    text:{"atlas":"minecraft:items","sprite": "ghostcraft:item/map/warehouse/fuel"},\
    background:0,\
    brightness:{block:15,sky:15},\
    billboard:"center",\
    transformation:{\
        left_rotation:[0f,0f,0f,1f],\
        right_rotation:[0f,0f,0f,1f],\
        translation:[0f,0f,0f],\
        scale:[5f,5f,5f]\
    }\
}


