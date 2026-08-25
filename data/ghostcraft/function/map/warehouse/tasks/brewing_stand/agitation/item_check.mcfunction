

tag @s add ghostcraft.map.warehouse.tasks.brewing_stand.agitated
execute as @e[type=item,distance=..1] if predicate ghostcraft:map/warehouse/tasks/brewing_stand/is_suppressant run function ghostcraft:map/warehouse/tasks/brewing_stand/agitation/suppress
tag @s remove ghostcraft.map.warehouse.tasks.brewing_stand.agitated

