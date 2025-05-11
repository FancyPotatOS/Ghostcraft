#
#   Damage Indicator Tick
#   
#   Purpose: To update this entity's damage indicator
#
#   Input: None
#


scoreboard players remove @e[tag=ghostcraft.ability.damage_indicator.text] ghostcraft.game.ghosthunt.damage_indicators.old_health 1
execute as @e[tag=ghostcraft.ability.damage_indicator.text] if score @s ghostcraft.game.ghosthunt.damage_indicators.old_health matches ..0 run kill @s

# Update all entities with a damage indicator tag and health doesn't match old health update
execute as @e[type=#ghostcraft:player,tag=ghostcraft.ability.damage_indicator] store result score @s ghostcraft.game.ghosthunt.damage_indicators.current_health run data get entity @s Health
execute as @e[type=#ghostcraft:player,tag=ghostcraft.ability.damage_indicator] unless score @s ghostcraft.game.ghosthunt.damage_indicators.current_health = @s ghostcraft.game.ghosthunt.damage_indicators.old_health at @s run function ghostcraft:ability/damage_indicator/update

