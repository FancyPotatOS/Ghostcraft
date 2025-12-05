#
#   Kit Class Trigger
#   
#   Purpose: To run when the class trigger is set and remove the advancement
#
#   Input: None
#


function #ghostcraft:kit/class/trigger
# Default class is archer
execute unless entity @s[tag=ghostcraft.class.accepted] run function ghostcraft:kit/archer/test/trigger

function ghostcraft:kit/class/kit_options/return_offhand
dialog clear @s

function #ghostcraft:kit/tell_changed

tag @s remove ghostcraft.class.accepted
scoreboard players reset @s ghostcraft.trigger.class

advancement revoke @s only ghostcraft:kit/class/trigger

