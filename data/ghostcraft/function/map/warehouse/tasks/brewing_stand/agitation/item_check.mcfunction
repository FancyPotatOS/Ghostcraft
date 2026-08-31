

tag @s add ghostcraft.map.warehouse.brewing_stand.agitated.target
execute as @e[type=item,distance=..1] if predicate ghostcraft:map/warehouse/tasks/brewing_stand/is_suppressant run function ghostcraft:map/warehouse/tasks/brewing_stand/agitation/suppress
tag @s remove ghostcraft.map.warehouse.brewing_stand.agitated.target

