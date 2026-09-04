#
#   Read Successful
#   
#   Purpose: To run some logic if player reads a book successfully
#
#   Input: None
#


execute if entity @s[tag=ghostcraft.ghost] run return 0

tag @s add ghostcraft.map.haunted_hillside.tasks.ritual.book.reader

# Kill all nearby anti_camp markers when reading
# execute as @e[type=marker,tag=ghostcraft.game.ghosthunt.anti_camp.player_marker,distance=..5] if score @s ghostcraft.uuid = @p[tag=ghostcraft.map.haunted_hillside.tasks.ritual.book.reader] ghostcraft.uuid

# We shall do the opposite: Spawn an additional anti_camp marker! >:)
function ghostcraft:game/ghosthunt/anti_camp/player/update

tag @s remove ghostcraft.map.haunted_hillside.tasks.ritual.book.reader

