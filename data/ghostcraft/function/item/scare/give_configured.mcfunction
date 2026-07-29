#
#   Give Configured
#   
#   Purpose: To give this item to the player if storage `ghostcraft:data choice` matches
#
#   Input: None
#


execute if data storage ghostcraft:data {choice:"Scare"} run loot give @s loot ghostcraft:ghost/scare

