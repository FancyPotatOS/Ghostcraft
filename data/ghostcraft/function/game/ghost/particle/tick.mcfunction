#
#   Tick
#   
#   Purpose: To update all players that may have chosen particle options
#
#   Input: None
#


execute as @a at @s if score @s ghostcraft.effect.ghost.hurt_effect.trigger matches 0.. run function ghostcraft:game/ghost/particle/effect_trigger

