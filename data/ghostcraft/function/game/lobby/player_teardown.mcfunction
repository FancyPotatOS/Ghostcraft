#
#   Player Teardown
#   
#   Purpose: To remove lobby setup logic
#
#   Input: None
#

clear @s

function ghostcraft:ability/feather_falling/revoke

attribute @s generic.attack_damage modifier remove ghostcraft.game.lobby.player

effect clear @s

