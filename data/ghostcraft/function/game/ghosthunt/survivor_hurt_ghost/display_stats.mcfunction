

tellraw @a {text:" = Damage on Ghosts = "}

execute as @e[tag=ghostcraft.survivor] if score @s ghostcraft.game.ghosthunt.survivor_hurt_ghost.total_damage matches 1.. run function ghostcraft:game/ghosthunt/survivor_hurt_ghost/display_stat

