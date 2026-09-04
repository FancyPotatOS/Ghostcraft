
execute unless score game.tasks.enabled ghostcraft.config matches 1 run return 0

execute if score map ghostcraft.config matches 10 run function ghostcraft:map/warehouse/tick
