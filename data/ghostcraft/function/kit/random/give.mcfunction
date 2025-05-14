
# Get all subscribing kits
data modify storage ghostcraft:data random_kits set value []
function #ghostcraft:kit/random/subscribe_kit

# Choose a random kit id
execute store result score random_kits_size ghostcraft.temp run data get storage ghostcraft:data random_kits
scoreboard players remove random_kits_size ghostcraft.temp 1
function ghostcraft:kit/random/macro/clear
execute store result storage ghostcraft:data macro.rng int 1 run scoreboard players get random_kits_size ghostcraft.temp
function ghostcraft:kit/random/macro/rng with storage ghostcraft:data macro

# Get the class at that index
execute store result storage ghostcraft:data macro.index int 1 run scoreboard players get kit.random.rng ghostcraft.temp
function ghostcraft:kit/random/macro/get_kit with storage ghostcraft:data macro

# Set player's random class
scoreboard players operation @s ghostcraft.class = kit.random.kit_choice ghostcraft.temp
scoreboard players operation @s ghostcraft.kit.random.chosen_kit = kit.random.kit_choice ghostcraft.temp

#tellraw @a {"score":{name:"@s",objective:"ghostcraft.class"}}

# Re-call this method. Thankfully, now that the ghostcraft.class value is NOT 7, this won't be recursive
function #ghostcraft:kit/give

# Reset class score
scoreboard players set @s ghostcraft.class 7

# And the cool thing is, we don't need to save the class id for clearing logic, as ALL clear functions are run, regardless of whether it is your class.

