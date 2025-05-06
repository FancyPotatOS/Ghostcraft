#
#   Game Tick
#   
#   Purpose: To tick game-related functions
#
#   Input: None
#


scoreboard players enable @a ghostcraft.trigger.game
scoreboard players enable @a ghostcraft.trigger.class

execute as @a if score @s ghostcraft.game.deaths matches 1.. at @s run function ghostcraft:game/on_death

execute as @e[type=#ghostcraft:player] if data entity @s {HurtTime:10s} at @s run function ghostcraft:game/on_hurt

execute as @a[tag=ghostcraft.ability.ghost_energy] at @s run function ghostcraft:ability/ghost_energy/tick
execute as @a[tag=ghostcraft.ability.cling] at @s run function ghostcraft:ability/cling/tick

function #ghostcraft:game/tick

