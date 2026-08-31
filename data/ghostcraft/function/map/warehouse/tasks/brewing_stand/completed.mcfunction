

scoreboard players set map.warehouse.brewing_stand.completed ghostcraft.temp 1

tellraw @a {text:"The brewing stands are stable. Those who contributed most may find a token in the meeting room.",italic:true,color:"dark_green"}

# Get the most contribute count
scoreboard players set max_contributed ghostcraft.temp 0
execute as @a[tag=ghostcraft.survivor] if score max_contributed ghostcraft.temp < @s ghostcraft.map.task.contributed run scoreboard players operation max_contributed ghostcraft.temp = @s ghostcraft.map.task.contributed

# You can be within 2 of the highest achiever, but you must have contributed at least 2
scoreboard players remove max_contributed ghostcraft.temp 2
execute if score max_contributed ghostcraft.temp matches ..1 run scoreboard players set max_contributed ghostcraft.temp 2

# Summon tokens per contributor!
execute as @a if score max_contributed ghostcraft.temp <= @s ghostcraft.map.task.contributed run function ghostcraft:map/warehouse/tasks/brewing_stand/summon_token

