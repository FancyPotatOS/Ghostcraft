

data modify storage ghostcraft:data macro set value {grenade_count:67,splash_potion_count:67,potion_count:67}
execute store result storage ghostcraft:data macro.grenade_count int 1 run scoreboard players get kit.soldier.grenade_count ghostcraft.config
execute store result storage ghostcraft:data macro.splash_potion_count int 1 run scoreboard players get kit.soldier.potion.splash.count ghostcraft.config
execute store result storage ghostcraft:data macro.potion_count int 1 run scoreboard players get kit.soldier.potion.normal.count ghostcraft.config

function ghostcraft:kit/soldier/show_dialog_macro with storage ghostcraft:data macro
