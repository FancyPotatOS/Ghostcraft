#
#   Ritual Completed
#   
#   Purpose: To run logic when the ritual was completed
#
#   Input: None
#


# Completed once
execute if score map.haunted_hillside.ritual.completed ghostcraft.temp matches 1 run return 0
scoreboard players set map.haunted_hillside.ritual.completed ghostcraft.temp 1

execute as @e[tag=ghostcraft.survivor] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/rewards/survivor
execute as @e[tag=ghostcraft.ghost] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/rewards/ghost
execute as @e[tag=ghostcraft.map.haunted_hillside.tasks.ritual.herbalist] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/rewards/herbalist
execute as @e[tag=ghostcraft.map.haunted_hillside.tasks.ritual.parapsychologist] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/rewards/parapsychologist

title @a[tag=ghostcraft.survivor] subtitle {text:'The timer has been unfrozen!',color:green}
title @a[tag=ghostcraft.ghost] subtitle {text:'The timer has been unfrozen!',color:red}
title @a title ''

scoreboard players operation game_timer ghostcraft.temp = map.haunted_hillside.tasks.ritual.end_time ghostcraft.config

