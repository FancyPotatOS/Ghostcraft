

execute store result score new_health ghostcraft.temp run data get entity @s Health
scoreboard players operation damage_dealt ghostcraft.temp = @s ghostcraft.game.ghosthunt.damage_indicators.current_health

scoreboard players operation damage_dealt ghostcraft.temp -= new_health ghostcraft.temp

scoreboard players operation accum_damage ghostcraft.temp += damage_dealt ghostcraft.temp



