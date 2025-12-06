

scoreboard players operation old_ghost_healths ghostcraft.temp = ghost_healths ghostcraft.temp

function ghostcraft:game/ghosthunt/survivor_hurt_ghost/sum_all_ghost_health

scoreboard players operation old_ghost_healths ghostcraft.temp -= ghost_healths ghostcraft.temp

scoreboard players operation accum_damage ghostcraft.temp += old_ghost_healths ghostcraft.temp

