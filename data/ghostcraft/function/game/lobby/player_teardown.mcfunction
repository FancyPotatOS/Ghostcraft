#
#   Player Teardown
#   
#   Purpose: To remove lobby setup logic
#
#   Input: None
#


effect clear @s instant_health
effect clear @s resistance

attribute @s minecraft:attack_damage modifier remove ghostcraft.game.lobby.player

