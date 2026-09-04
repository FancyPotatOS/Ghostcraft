

# Change tag over
tag @s remove ghostcraft.map.warehouse.trucks.broken_tire.missing_tire
tag @s remove ghostcraft.map.warehouse.trucks.broken_tire.missing_tire.adding
tag @s remove ghostcraft.map.warehouse.trucks.broken_tire.instance

# Tell player
title @p[tag=ghostcraft.map.warehouse.trucks.tire.user] actionbar {text:"The tire has been replaced.",color:white}
execute unless entity @n[tag=ghostcraft.map.warehouse.trucks.broken_tire.instance] run title @p[tag=ghostcraft.map.warehouse.trucks.tire.user] actionbar {text:"The final tire has been replaced.",color:green}
title @p[tag=ghostcraft.map.warehouse.trucks.tire.user] subtitle ""
title @p[tag=ghostcraft.map.warehouse.trucks.tire.user] title ""

# Contributed something
scoreboard players add @p[tag=ghostcraft.map.warehouse.trucks.tire.user] ghostcraft.map.task.contributed 1

# Replace with air
setblock ~ ~ ~ minecraft:chiseled_polished_blackstone

# Remove tag
tag @p[tag=ghostcraft.map.warehouse.trucks.tire.user] remove ghostcraft.map.warehouse.trucks.tire.user

# Completion check
function ghostcraft:map/warehouse/tasks/trucks/completion_check

