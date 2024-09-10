#
#   Hit launchable block
#   
#   Purpose: To launch the block set 
#
#   Input: None
#

tag @s add ghostcraft.crafting_table.source

summon armor_stand ~ ~ ~ {Tags:["ghostcraft.ability.ghost_block.block_launch.hit_launchable.temp"],Invisible:1b,NoGravity:1b,ShowArms:1b}

execute as @e[tag=ghostcraft.ability.ghost_block.block_launch.hit_launchable.temp] at @s run function ghostcraft:ability/ghost_block/block_launch/replace_with_launched

kill @e[tag=ghostcraft.ability.ghost_block.block_launch.hit_launchable.temp]

tag @s remove ghostcraft.crafting_table.source
