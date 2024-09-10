
scoreboard players operation required_energy ghostcraft.ability.ghost_energy = item.boost.energy_requirement ghostcraft.config
execute unless function ghostcraft:ability/ghost_energy/has_enough_energy run return run function ghostcraft:item/boost/not_enough_energy

execute if score is_server ghostcraft.config matches 0 run function ghostcraft:item/boost/used_client

execute if score is_server ghostcraft.config matches 1 run function ghostcraft:item/boost/used_server
