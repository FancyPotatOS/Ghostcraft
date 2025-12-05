

data modify storage ghostcraft:data macro set value {arrow_count:67}
execute store result storage ghostcraft:data macro.arrow_count int 1 run scoreboard players get kit.shotbow.arrow_count ghostcraft.config

function ghostcraft:kit/shotbow/show_dialog_macro with storage ghostcraft:data macro
