#
#   Give Configured
#   
#   Purpose: To give this item to the player if storage `ghostcraft:data choice` matches
#
#   Input: None
#


execute if data storage ghostcraft:data {choice:"Flashbang"} run loot give @s loot ghostcraft:ghost/flashbang

