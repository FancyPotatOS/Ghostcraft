
# Remove abilities
function ghostcraft:ability/feather_falling/revoke
tag @s remove ghostcraft.ability.pounce
tag @s remove ghostcraft.ability.vampire
tag @s remove ghostcraft.ability.ghost_energy
tag @s remove ghostcraft.ability.ghost_compass

# Remove effects
effect clear @s minecraft:invisibility

# Remove immunities
tag @s remove ghostcraft.item.flashbang.immune
tag @s remove ghostcraft.item.frag_grenade.immune
tag @s remove ghostcraft.item.poison_grenade.immune
tag @s remove ghostcraft.item.stab.immune

tag @s remove ghostcraft.effect.ambient_ghost.invisible
tag @s remove effect.ghost.hurt_effect.invisible
