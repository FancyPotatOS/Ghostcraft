#
#   Ghosthunt Tick
#   
#   Purpose: To tick the ghosthunt game state
#
#   Input: None
#


scoreboard players operation thrower ghostcraft.uuid = @s ghostcraft.uuid

# Tag the throwing entity, they may always pick it up if no compliance is set
execute unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance] as @e[type=#ghostcraft:player] if score @s ghostcraft.uuid = thrower ghostcraft.uuid run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant

# Pro- or anti-compliance if the item is mine
execute if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance,tag=ghostcraft.game.ghosthunt.item_ownership.compliance.self] as @e[type=#ghostcraft:player] if score @s ghostcraft.uuid = thrower ghostcraft.uuid run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant
execute if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance,tag=ghostcraft.game.ghosthunt.item_ownership.compliance.anti_self] as @e[type=#ghostcraft:player] if score @s ghostcraft.uuid = thrower ghostcraft.uuid run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant

# API call for compliance
execute if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance] run function #ghostcraft:game/ghosthunt/item_ownership/check_compliance

# Pro- or anti-compliance tag additions
execute if entity @s[tag=!ghostcraft.game.ghosthunt.item_ownership.compliance] run tag @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] add ghostcraft.game.ghosthunt.item_ownership.discompliant
execute if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.all] run tag @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] add ghostcraft.game.ghosthunt.item_ownership.compliant
execute if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.ghost] run tag @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant,tag=ghostcraft.ghost] add ghostcraft.game.ghosthunt.item_ownership.compliant
execute if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.anti_ghost] run tag @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant,tag=ghostcraft.ghost] add ghostcraft.game.ghosthunt.item_ownership.discompliant
execute if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.survivor] run tag @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant,tag=ghostcraft.survivor] add ghostcraft.game.ghosthunt.item_ownership.compliant
execute if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.anti_survivor] run tag @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant,tag=ghostcraft.survivor] add ghostcraft.game.ghosthunt.item_ownership.discompliant

tag @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] add ghostcraft.game.ghosthunt.item_ownership.discompliant

#say C: @e[type=#ghostcraft:player,distance=..2,tag=ghostcraft.game.ghosthunt.item_ownership.compliant]
#say D: @e[type=#ghostcraft:player,distance=..2,tag=ghostcraft.game.ghosthunt.item_ownership.discompliant]

# Add/remove PickupDelay based on nearby discompliant entities (Negative match last to prevent item pickup when both cases are true)
execute unless entity @e[type=#ghostcraft:player,distance=..2,tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] if data entity @s {PickupDelay:32767s} run data modify entity @s PickupDelay set value 0
execute positioned ~ ~-1 ~ unless entity @e[type=#ghostcraft:player,distance=..2,tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] if data entity @s {PickupDelay:32767s} run data modify entity @s PickupDelay set value 0

execute if entity @e[type=#ghostcraft:player,distance=..2,tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] run data modify entity @s PickupDelay set value 32767s
execute positioned ~ ~-1 ~ if entity @e[type=#ghostcraft:player,distance=..2,tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] run data modify entity @s PickupDelay set value 32767s

# Clean up tags
tag @e[type=#ghostcraft:player] remove ghostcraft.game.ghosthunt.item_ownership.compliant
tag @e[type=#ghostcraft:player] remove ghostcraft.game.ghosthunt.item_ownership.discompliant

