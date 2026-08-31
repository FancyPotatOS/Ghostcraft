

# Don't summon when entity nearby
execute if entity @p[distance=..2] run return run particle minecraft:item{item:{id:"poisonous_potato",components:{item_model:"ghostcraft:map/warehouse/fuel"}}} ~ ~ ~ 0.05 0.05 0.05 0.05 1

# Mark pre-existing items
tag @e[type=item] add ghostcraft.map.warehouse.trucks.existing_item

loot spawn ~ ~ ~ loot ghostcraft:map/warehouse/tasks/trucks/fuel_uninitialized

execute as @n[type=item,tag=!ghostcraft.map.warehouse.trucks.existing_item] run function ghostcraft:map/warehouse/tasks/trucks/fuel/setup_item

# Clean up tags
tag @e[type=item] remove ghostcraft.map.warehouse.trucks.existing_item

