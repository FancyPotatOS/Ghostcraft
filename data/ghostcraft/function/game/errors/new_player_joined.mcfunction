#
#   New Player Error
#   
#   Purpose: To fail a transition due to a new player joining
#
#   Input: None
#

function #ghostcraft:game/stop

title @a actionbar [{"text":"Stopping countdown due to a new player"}]
scoreboard players operation phase ghostcraft.master = return_phase ghostcraft.master

function #ghostcraft:game/start

