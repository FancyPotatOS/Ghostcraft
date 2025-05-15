#
#   Update
#   
#   Purpose: To run this player's anti-camp update logic
#
#   Input: None
#


# Increment the tail ID
scoreboard players add @s ghostcraft.game.ghosthunt.anti_camp.tails 1

summon marker ~ ~ ~ {Tags:["ghostcraft.game.ghosthunt.anti_camp.player_marker","ghostcraft.game.ghosthunt.anti_camp.new"]}
# Save owner's uuid
execute store result score @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.new] ghostcraft.uuid run data get entity @s UUID[0]
# Get tail number
scoreboard players operation @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.new] ghostcraft.game.ghosthunt.anti_camp.tails = @s ghostcraft.game.ghosthunt.anti_camp.tails

# Remove new tag
tag @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.new] remove ghostcraft.game.ghosthunt.anti_camp.new

# Kill the oldest tails
scoreboard players operation game.ghosthunt.anti_camp.alone.oldest_tail ghostcraft.temp = @s ghostcraft.game.ghosthunt.anti_camp.tails
scoreboard players operation game.ghosthunt.anti_camp.alone.oldest_tail ghostcraft.temp -= game.ghosthunt.anti_camp.tail ghostcraft.config
execute as @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.player_marker] if score @s ghostcraft.game.ghosthunt.anti_camp.tails <= game.ghosthunt.anti_camp.alone.oldest_tail ghostcraft.temp run kill @s

# Save this entity with a tag
tag @s add ghostcraft.game.ghosthunt.anti_camp.current

# Sum all the nearest markers that both 
scoreboard players set game.ghosthunt.anti_camp.alone.sum ghostcraft.temp 0
scoreboard players set game.ghosthunt.anti_camp.multiple.sum ghostcraft.temp 0
execute as @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.player_marker,distance=..10] if score @s ghostcraft.uuid = @e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.anti_camp.current,limit=1,sort=nearest] ghostcraft.uuid run scoreboard players add game.ghosthunt.anti_camp.alone.sum ghostcraft.temp 1
execute as @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.player_marker,distance=..10] unless score @s ghostcraft.uuid = @e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.anti_camp.current,limit=1,sort=nearest] ghostcraft.uuid run scoreboard players add game.ghosthunt.anti_camp.multiple.sum ghostcraft.temp 1

# Check whether there is actually a mixed bunch of markers
scoreboard players set game.ghosthunt.anti_camp.multiple.is_mixed ghostcraft.temp 0
execute if score game.ghosthunt.anti_camp.multiple.sum ghostcraft.temp matches 1.. run scoreboard players set game.ghosthunt.anti_camp.multiple.is_mixed ghostcraft.temp 1
execute if score game.ghosthunt.anti_camp.multiple.sum ghostcraft.temp matches 1.. run scoreboard players operation game.ghosthunt.anti_camp.multiple.sum ghostcraft.temp += game.ghosthunt.anti_camp.alone.sum ghostcraft.temp

# Clean up tags
tag @s remove ghostcraft.game.ghosthunt.anti_camp.current

#tellraw @p ["",{"text":"[","bold":true},{"score":{"name":"game.ghosthunt.anti_camp.alone.sum","objective":"ghostcraft.temp"}},{"text":", ","bold":true},{"score":{"name":"game.ghosthunt.anti_camp.multiple.sum","objective":"ghostcraft.temp"}},{"text":"]","bold":true}]

# Fault or warn if alone
execute unless score game.ghosthunt.anti_camp.multiple.is_mixed ghostcraft.temp matches 1 if score game.ghosthunt.anti_camp.density.alone.fault ghostcraft.config <= game.ghosthunt.anti_camp.alone.sum ghostcraft.temp run return run function ghostcraft:game/ghosthunt/anti_camp/player/alone/fault
execute unless score game.ghosthunt.anti_camp.multiple.is_mixed ghostcraft.temp matches 1 unless entity @e[type=marker,distance=..10,tag=ghostcraft.game.ghosthunt.anti_camp.alone.marker.warned] if score game.ghosthunt.anti_camp.density.alone.warning ghostcraft.config <= game.ghosthunt.anti_camp.alone.sum ghostcraft.temp run function ghostcraft:game/ghosthunt/anti_camp/player/alone/warn

# Fault or warn if grouped
execute if score game.ghosthunt.anti_camp.multiple.is_mixed ghostcraft.temp matches 1 if score game.ghosthunt.anti_camp.density.multiple.fault ghostcraft.config <= game.ghosthunt.anti_camp.multiple.sum ghostcraft.temp run return run function ghostcraft:game/ghosthunt/anti_camp/player/multiple/fault_all
execute if score game.ghosthunt.anti_camp.multiple.is_mixed ghostcraft.temp matches 1 unless entity @e[type=marker,distance=..10,tag=ghostcraft.game.ghosthunt.anti_camp.multiple.marker.warned] if score game.ghosthunt.anti_camp.density.multiple.warning ghostcraft.config <= game.ghosthunt.anti_camp.multiple.sum ghostcraft.temp run function ghostcraft:game/ghosthunt/anti_camp/player/multiple/warn_all

