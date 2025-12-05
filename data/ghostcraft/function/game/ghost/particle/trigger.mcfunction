#
#   Trigger
#   
#   Purpose: To this player chose a particle option
#
#   Input: None
#


# ghostcraft.effect.ghost.particle_effect
execute unless score @s ghostcraft.effect.ghost.particle_effect.trigger matches 0..11 run return 0
scoreboard players operation @s ghostcraft.effect.ghost.particle_effect = @s ghostcraft.effect.ghost.particle_effect.trigger

execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 0 at @s run title @s actionbar {"text":"Selected 'Smoke'"}
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 0 at @s positioned ~ ~1.5 ~ run particle smoke ^ ^ ^1 0 0.5 0 0 20 force @s
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 1 at @s run title @s actionbar {"text":"Selected 'Ominous Spawning'"}
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 1 at @s positioned ~ ~1.5 ~ run particle ominous_spawning ^ ^ ^1 0 0.5 0 0 20 force @s
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 2 at @s run title @s actionbar {"text":"Selected 'Small Flame'"}
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 2 at @s positioned ~ ~1.5 ~ run particle small_flame ^ ^ ^1 0 0.5 0 0 20 force @s
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 3 at @s run title @s actionbar {"text":"Selected 'Glow'"}
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 3 at @s positioned ~ ~1.5 ~ run particle glow ^ ^ ^1 0 0.5 0 0 20 force @s
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 4 at @s run title @s actionbar {"text":"Selected 'Trial Omen'"}
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 4 at @s positioned ~ ~1.5 ~ run particle trial_omen ^ ^ ^1 0 0.5 0 0 20 force @s
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 5 at @s run title @s actionbar {"text":"Selected 'Raid Omen'"}
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 5 at @s positioned ~ ~1.5 ~ run particle raid_omen ^ ^ ^1 0 0.5 0 0 20 force @s
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 6 at @s run title @s actionbar {"text":"Selected 'Small Gust'"}
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 6 at @s positioned ~ ~1.5 ~ run particle small_gust ^ ^ ^1 0 0.5 0 0 20 force @s
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 7 at @s run title @s actionbar {"text":"Selected 'Spit'"}
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 7 at @s positioned ~ ~1.5 ~ run particle spit ^ ^ ^1 0 0.5 0 0 20 force @s
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 8 at @s run title @s actionbar {"text":"Selected 'Splash'"}
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 8 at @s positioned ~ ~1.5 ~ run particle splash ^ ^ ^1 0 0.5 0 0 20 force @s
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 9 at @s run title @s actionbar {"text":"Selected 'Sculk Charge Pop'"}
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 9 at @s positioned ~ ~1.5 ~ run particle sculk_charge_pop ^ ^ ^1 0 0.5 0 0 20 force @s
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 10 at @s run title @s actionbar {"text":"Selected 'Totem Of Undying'"}
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 10 at @s positioned ~ ~1.5 ~ run particle totem_of_undying ^ ^ ^1 0 0.5 0 0 20 force @s
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 11 at @s run title @s actionbar {"text":"Selected 'Sculk Charge'"}
execute if score @s ghostcraft.effect.ghost.particle_effect.trigger matches 11 at @s positioned ~ ~1.5 ~ run particle sculk_charge{roll:0} ^ ^ ^1 0 0.5 0 0 20 force @s

title @s title {"text":""}

