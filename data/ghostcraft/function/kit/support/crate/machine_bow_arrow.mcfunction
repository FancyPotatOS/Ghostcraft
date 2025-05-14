
# Tag all existing items
tag @e[type=item,distance=..5] add ghostcraft.kit.support.crate.not_it

execute positioned ~ ~1.62 ~ positioned ^ ^ ^1.6 run loot spawn ~ ~ ~ loot ghostcraft:item/arrows/machine_bow_arrow

# Add all the tags/data
tag @e[tag=!ghostcraft.kit.support.crate.not_it,type=item] add ghostcraft.game.ghosthunt.item_ownership.compliance
tag @e[tag=!ghostcraft.kit.support.crate.not_it,type=item] add ghostcraft.game.ghosthunt.item_ownership.compliance.anti_self
tag @e[tag=!ghostcraft.kit.support.crate.not_it,type=item] add ghostcraft.game.ghosthunt.item_ownership.compliance.kit.has_machine_bow_arrow
tag @e[tag=!ghostcraft.kit.support.crate.not_it,type=item] add ghostcraft.game.ghosthunt.item_ownership.new
execute as @e[tag=!ghostcraft.kit.support.crate.not_it,type=item] run data merge entity @s {Age:-1,PickupDelay:200}

# Save the thrower's uuid
data modify entity @e[type=item,tag=ghostcraft.game.ghosthunt.item_ownership.new,limit=1] Thrower set from entity @s UUID

# Clean up tags
tag @e[type=item,distance=..5] remove ghostcraft.kit.support.crate.not_it
tag @e[type=item,tag=ghostcraft.game.ghosthunt.item_ownership.new] remove ghostcraft.game.ghosthunt.item_ownership.new

advancement revoke @s only ghostcraft:kit/support/crate/consumed_machine_bow_arrow
