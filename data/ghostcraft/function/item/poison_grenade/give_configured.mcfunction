#
#   Give Configured
#   
#   Purpose: To give this item to the player if storage `ghostcraft:data choice` matches
#
#   Input: None
#


execute if data storage ghostcraft:data {choice:"PoisonGrenade"} run loot give @s loot ghostcraft:ghost/poison_grenade

