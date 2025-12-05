

data modify storage ghostcraft:data macro set value {arrow_count:67,sugar_count:67}
execute store result storage ghostcraft:data macro.arrow_count int 1 run scoreboard players get kit.archer.arrow_count ghostcraft.config
execute store result storage ghostcraft:data macro.sugar_count int 1 run scoreboard players get kit.archer.speed_sugar ghostcraft.config

function ghostcraft:kit/archer/show_dialog_macro with storage ghostcraft:data macro
