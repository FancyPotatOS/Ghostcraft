
function ghostcraft:ability/vampire/add_regen

schedule function ghostcraft:ability/vampire/schedule_remove_regen 2t

advancement revoke @s only ghostcraft:ability/vampire/damage
