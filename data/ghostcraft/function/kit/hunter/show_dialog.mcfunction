

data modify storage ghostcraft:data macro set value {flare_count:67,trap_uses:67}
execute store result storage ghostcraft:data macro.flare_count int 1 run scoreboard players get kit.hunter.flare_count ghostcraft.config
execute store result storage ghostcraft:data macro.trap_uses int 1 run scoreboard players get kit.hunter.trap.count ghostcraft.config

function ghostcraft:kit/hunter/show_dialog_macro with storage ghostcraft:data macro
