#
#   Update
#   
#   Purpose: To update this player's damage indicator
#
#   Input: None
#

scoreboard players operation difference ghostcraft.game.ghosthunt.damage_indicators.old_health = @s ghostcraft.game.ghosthunt.damage_indicators.current_health
scoreboard players operation difference ghostcraft.game.ghosthunt.damage_indicators.old_health -= @s ghostcraft.game.ghosthunt.damage_indicators.old_health

function ghostcraft:ability/damage_indicator/effect

# Reset health values
scoreboard players operation @s ghostcraft.game.ghosthunt.damage_indicators.old_health = @s ghostcraft.game.ghosthunt.damage_indicators.current_health

