
execute if score is_server ghostcraft.config matches 0 run function ghostcraft:ability/pounce/activate_client

execute if score is_server ghostcraft.config matches 1 run function ghostcraft:ability/pounce/activate_server

tag @s remove ghostcraft.ability.pounce.charging
