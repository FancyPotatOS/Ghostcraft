

tellraw @a {text:"The brewing stands have becoming unstable! Find some Chemical Suppressant to fix them.",italic:true,color:"gray"}

# Choose one vault location
execute as @e[type=marker,limit=1,sort=random,tag=ghostcraft.map.warehouse.vault] at @s run function ghostcraft:map/warehouse/tasks/setup_vault

# Agitate all brewing stands
execute as @e[type=marker,tag=ghostcraft.map.warehouse.brewing_stand] at @s run function ghostcraft:map/warehouse/tasks/brewing_stand/agitation/setup

# Setup supplier
execute as @e[type=marker,limit=1,sort=random,tag=ghostcraft.map.warehouse.suppressant_supplier] at @s run function ghostcraft:map/warehouse/tasks/brewing_stand/setup_supplier

