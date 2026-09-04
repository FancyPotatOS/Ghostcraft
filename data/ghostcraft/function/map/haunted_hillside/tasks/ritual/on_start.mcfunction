#
#   On Game Start
#   
#   Purpose: To run map-related initialization logic on game start
#
#   Input: None
#


# No timer
scoreboard players set game_timer ghostcraft.temp 2147483647

# Uncompleted task
scoreboard players set map.haunted_hillside.ritual.completed ghostcraft.temp 0

execute as @a at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/reset_player

scoreboard players set target_book ghostcraft.temp 0
execute as @e[type=minecraft:marker,tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.location,tag=!ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.chosen,sort=random,limit=1] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/setup
scoreboard players set target_book ghostcraft.temp 1
execute as @e[type=minecraft:marker,tag=ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.location,tag=!ghostcraft.map.haunted_hillside.tasks.ritual.bookshelf.chosen,sort=random,limit=1] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/bookshelf/setup

scoreboard players operation plant_count ghostcraft.temp = map.haunted_hillside.tasks.ritual.plant.count ghostcraft.config
execute as @e[type=minecraft:marker,tag=ghostcraft.map.haunted_hillside.tasks.ritual.plant.location] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/plant/setup

execute as @e[type=minecraft:marker,tag=ghostcraft.map.haunted_hillside.tasks.ritual.grave.location] at @s run function ghostcraft:map/haunted_hillside/tasks/ritual/grave/setup

title @a[tag=ghostcraft.survivor] subtitle {text:"The timer is paused",color:gold,bold:true}
title @a[tag=ghostcraft.survivor] actionbar {text:"Grab some books around the mansion and get reading!",color:gray,italic:true}
title @a[tag=ghostcraft.survivor] times 10t 70t 20t
title @a[tag=ghostcraft.survivor] title ''

