#
#   Replace With Launched Block
#   
#   Purpose: To get the block data at this position and replace it with a launched entity
#
#   Input: None
#

loot replace entity @s weapon.mainhand loot blockstate:get
playsound ghostcraft:hit_launchable hostile @a[distance=..30] ~ ~ ~ 1

# Reset the data and fill with the block data
data modify storage ghostcraft:data block_launch set from entity @s equipment.mainhand.components."minecraft:custom_data"

function ghostcraft:ability/ghost_block/block_launch/store_player_diff

function ghostcraft:ability/ghost_block/block_launch/summon_block with storage ghostcraft:data block_launch

setblock ~ ~ ~ air
