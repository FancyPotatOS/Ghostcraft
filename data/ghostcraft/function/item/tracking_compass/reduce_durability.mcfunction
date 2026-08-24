

scoreboard players set target_damage ghostcraft.temp 0
execute store result score target_damage ghostcraft.temp run data get entity @s SelectedItem.components.minecraft:damage
execute store result score max_damage ghostcraft.temp run data get entity @s SelectedItem.components."minecraft:max_damage"

scoreboard players add target_damage ghostcraft.temp 1

execute if score max_damage ghostcraft.temp <= target_damage ghostcraft.temp run return run clear @s minecraft:compass[minecraft:custom_data={ghostcraft:{type:"tracking_compass"}}] 1
execute if score max_damage ghostcraft.temp <= target_damage ghostcraft.temp run return 0

execute store result entity @e[tag=ghostcraft.item.tracking_compass.compass_placeholder,limit=1] equipment.mainhand.components."minecraft:damage" int 1 run scoreboard players get target_damage ghostcraft.temp

return fail

