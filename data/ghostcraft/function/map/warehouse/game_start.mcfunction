

# Uncompleted brewing stands
scoreboard players set map.warehouse.brewing_stand.completed ghostcraft.temp 0
scoreboard players set @a ghostcraft.map.warehouse.task.brewing_stand.contributed 0

# Choose a task type
execute store result score map.warehouse.task.id ghostcraft.temp run random value 1..2

# Hardcode value until another is implemented
scoreboard players set map.warehouse.task.id ghostcraft.temp 1

# Run setup on choice
function ghostcraft:map/warehouse/tasks/setup

