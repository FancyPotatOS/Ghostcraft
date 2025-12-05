
scoreboard players set @s ghostcraft.used_snowball 0

tag @s add ghostcraft.advtrigger.snowball.thrower
execute as @e[type=snowball,distance=..5] if data entity @s {HasBeenShot:0b} run function #ghostcraft:item/snowball_init

# Update sync tagged entities
execute as @e[tag=ghostcraft.item.motion_sync] at @s run function ghostcraft:logic/sync_motion
execute as @e[tag=ghostcraft.item.timer_sync] at @s run function ghostcraft:logic/sync_timer

tag @s remove ghostcraft.advtrigger.snowball.thrower

advancement revoke @s only ghostcraft:item/trigger/used_snowball
