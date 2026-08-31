

# Config of max brewing stands to do
scoreboard players remove map.warehouse.brewing_stand.count ghostcraft.temp 1
execute if score map.warehouse.brewing_stand.count ghostcraft.temp matches ..-1 run return 0

tag @s add ghostcraft.map.warehouse.brewing_stand.agitated

