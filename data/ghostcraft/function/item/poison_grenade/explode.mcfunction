
effect give @e[type=#ghostcraft:player,tag=!ghostcraft.item.poison_grenade.immune,distance=0..5] minecraft:poison 12 0 true
effect give @e[type=#ghostcraft:player,tag=!ghostcraft.item.poison_grenade.immune,distance=5..10] minecraft:poison 5 0 true

playsound minecraft:block.glass.break hostile @a ~ ~ ~ 3
playsound minecraft:block.glass.break hostile @a ~ ~ ~ 3

particle minecraft:dripping_water ~ ~1 ~ 2 1 2 0 100 force
particle minecraft:dripping_honey ~ ~1 ~ 2 1 2 0 100 force
