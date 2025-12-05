

data modify storage ghostcraft:data macro set value {potion_count:67}
execute store result storage ghostcraft:data macro.potion_count int 1 run scoreboard players get kit.support.potion.count ghostcraft.config

function ghostcraft:kit/support/show_dialog_macro with storage ghostcraft:data macro
