#
#   Game Cancelled Error
#   
#   Purpose: To fail a transition due to the game start being cancelled
#
#   Input: None
#

function #ghostcraft:game/stop

title @a actionbar [{"text":"Player stopped countdown"}]
scoreboard players operation phase ghostcraft.master = return_phase ghostcraft.master

function #ghostcraft:game/start

