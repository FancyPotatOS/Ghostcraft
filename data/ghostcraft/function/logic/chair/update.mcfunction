#
#   Chair Update
#   
#   Purpose: To update all chair armor stands
#
#   Input: None
#


tag @s add ghostcraft.chair.current

# Mount check
execute if data entity @n[type=interaction] interaction.player run function ghostcraft:logic/chair/player_mount

# Dismount check
execute on passengers if entity @s run tag @n[tag=ghostcraft.chair.current] add ghostcraft.chair.mounted
execute if entity @s[tag=ghostcraft.chair.occupied,tag=!ghostcraft.chair.mounted] run function ghostcraft:logic/chair/dismounted

# Clean up tags
tag @s remove ghostcraft.chair.mounted
tag @s remove ghostcraft.chair.current

