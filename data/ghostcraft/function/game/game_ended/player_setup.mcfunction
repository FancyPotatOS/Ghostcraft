#
#   Player Setup
#   
#   Purpose: To initialize a new player during the game_ended state
#
#   Input: None
#

function ghostcraft:game/ghosthunt/on_death

title @s title {"text":""}
title @s actionbar {"text":"A game is in progress, please wait..."}
