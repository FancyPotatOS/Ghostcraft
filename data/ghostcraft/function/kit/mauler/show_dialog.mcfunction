

data modify storage ghostcraft:data macro set value {sugar_count:67,invisibility_count:67}
execute store result storage ghostcraft:data macro.invisibility_count int 1 run scoreboard players get kit.mauler.invisibility_dust ghostcraft.config
execute store result storage ghostcraft:data macro.sugar_count int 1 run scoreboard players get kit.mauler.speed_sugar ghostcraft.config

function ghostcraft:kit/mauler/show_dialog_macro with storage ghostcraft:data macro

