

# Cap pounce power at 0
execute if score @s ghostcraft.ability.pounce.power matches 0.. run scoreboard players set @s ghostcraft.ability.pounce.power 0

execute if entity @s[tag=ghostcraft.ability.pounce.should_update] unless score @s ghostcraft.ability.pounce.power matches ..-1 run title @s actionbar [{"text":"You do not have enough energy to pounce."}]

tag @s remove ghostcraft.ability.pounce.charging

