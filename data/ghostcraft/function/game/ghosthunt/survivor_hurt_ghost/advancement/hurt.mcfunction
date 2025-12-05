
advancement revoke @s only ghostcraft:game/ghosthunt/survivor_hurt_ghost/melee
advancement revoke @s only ghostcraft:game/ghosthunt/survivor_hurt_ghost/projectile

tag @s add ghostcraft.game.ghosthunt.survivor_hurt_ghost.attacker

scoreboard players set accum_damage ghostcraft.temp 0

execute as @e[tag=ghostcraft.ghost,nbt={HurtTime:10s}] run function ghostcraft:game/ghosthunt/survivor_hurt_ghost/save

tag @s remove ghostcraft.game.ghosthunt.survivor_hurt_ghost.attacker

execute if score phase ghostcraft.master matches 2 if score accum_damage ghostcraft.temp matches 1.. run function ghostcraft:game/ghosthunt/survivor_hurt_ghost/save_damage
