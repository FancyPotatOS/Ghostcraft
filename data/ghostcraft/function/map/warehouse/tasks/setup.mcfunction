

# No contributions
scoreboard players set @a ghostcraft.map.task.contributed 0

# 1 = brewing stand agitation
execute if score map.warehouse.task.id ghostcraft.temp matches 1 run function ghostcraft:map/warehouse/tasks/brewing_stand/setup

# 2 = truck exit
execute if score map.warehouse.task.id ghostcraft.temp matches 2 run function ghostcraft:map/warehouse/tasks/trucks/setup

