#
#   Trigger
#   
#   Purpose: To this player chose a particle option
#
#   Input: None
#


# ghostcraft.effect.ghost.hurt_effect
execute unless score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 0..11 run return 0
scoreboard players operation @s ghostcraft.effect.ghost.hurt_effect = @s ghostcraft.effect.ghost.hurt_effect.trigger

execute if score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 0 run title @s actionbar {"text":"Selected 'Smoke'"}
execute if score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 1 run title @s actionbar {"text":"Selected 'Ominous Spawning'"}
execute if score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 2 run title @s actionbar {"text":"Selected 'Small Flame'"}
execute if score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 3 run title @s actionbar {"text":"Selected 'Glow'"}
execute if score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 4 run title @s actionbar {"text":"Selected 'Trial Omen'"}
execute if score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 5 run title @s actionbar {"text":"Selected 'Raid Omen'"}
execute if score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 6 run title @s actionbar {"text":"Selected 'Small Gust'"}
execute if score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 7 run title @s actionbar {"text":"Selected 'Spit'"}
execute if score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 8 run title @s actionbar {"text":"Selected 'Splash'"}
execute if score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 9 run title @s actionbar {"text":"Selected 'Sculk Charge Pop'"}
execute if score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 10 run title @s actionbar {"text":"Selected 'Totem Of Undying'"}
execute if score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 11 run title @s actionbar {"text":"Selected 'Sculk Charge'"}

title @s title {"text":""}

