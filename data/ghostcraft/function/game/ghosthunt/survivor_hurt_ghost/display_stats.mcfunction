

execute as @e[type=#ghostcraft:player] unless entity @s[tag=ghostcraft.ghost] unless entity @s[tag=ghostcraft.game.ghosthunt.role.ghost] if score @s ghostcraft.game.ghosthunt.survivor_hurt_ghost.total_damage matches 1.. run tag @s add ghostcraft.game.ghosthunt.survivor_hurt_ghost.to_display

execute unless entity @e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.survivor_hurt_ghost.to_display] run return 0

tellraw @a {text:" = Damage on Ghosts = "}

execute as @e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.survivor_hurt_ghost.to_display] run function ghostcraft:game/ghosthunt/survivor_hurt_ghost/display_stat

tag @e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.survivor_hurt_ghost.to_display] remove ghostcraft.game.ghosthunt.survivor_hurt_ghost.to_display

