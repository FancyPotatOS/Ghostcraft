

tellraw @a {text:"The trucks are ready to go. Those who contributed may find a token in the meeting room.",italic:true,color:"dark_green"}

# You must have contributed at least 2
scoreboard players set min_contributed ghostcraft.temp 1

# Summon tokens per contributor!
execute as @a if score min_contributed ghostcraft.temp <= @s ghostcraft.map.task.contributed run function ghostcraft:map/warehouse/tasks/trucks/summon_token

