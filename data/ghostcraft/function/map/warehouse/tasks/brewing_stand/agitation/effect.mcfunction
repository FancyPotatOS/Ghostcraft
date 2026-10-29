

execute if predicate {type:"random_chance","chance":0.1} run particle minecraft:effect{color:[1,0,0]} ~ ~ ~ 0.3 0.3 0.3 0 2
execute if predicate {type:"random_chance","chance":0.1} run particle minecraft:effect{color:[0,1,0]} ~ ~ ~ 0.3 0.3 0.3 0 2
execute if predicate {type:"random_chance","chance":0.1} run particle minecraft:effect{color:[0,0,1]} ~ ~ ~ 0.3 0.3 0.3 0 2
execute if predicate {type:"random_chance","chance":0.1} run particle minecraft:effect{color:[1,1,0]} ~ ~ ~ 0.3 0.3 0.3 0 2
execute if predicate {type:"random_chance","chance":0.1} run particle minecraft:effect{color:[0,1,1]} ~ ~ ~ 0.3 0.3 0.3 0 2
execute if predicate {type:"random_chance","chance":0.1} run particle minecraft:effect{color:[1,0,1]} ~ ~ ~ 0.3 0.3 0.3 0 2
execute if predicate {type:"random_chance","chance":0.1} run particle minecraft:effect{color:[1,1,1]} ~ ~ ~ 0.3 0.3 0.3 0 2

execute if predicate {type:"random_chance","chance":0.2} run playsound minecraft:block.bubble_column.bubble_pop block @a[distance=..16] ~ ~ ~ 0.5 1

