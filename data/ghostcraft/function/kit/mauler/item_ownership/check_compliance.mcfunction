
# If looking for mauler compliance, tag all maulers as compliant if they have not been tagged as discompliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.mauler] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    if score @s ghostcraft.class matches 1 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant
# If looking for anti-mauler compliance, tag all maulers as discompliant if they have not been tagged as compliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.anti_mauler] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliant] \
    if score @s ghostcraft.class matches 1 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant

# If looking for speed sugar compliance, tag all maulers as compliant if they have not been tagged as discompliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.has_speed_sugar] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    if score @s ghostcraft.class matches 1 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant
# If looking for anti-speed sugar compliance, tag all maulers as discompliant if they have not been tagged as compliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.anti_has_speed_sugar] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliant] \
    if score @s ghostcraft.class matches 1 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant

# If looking for Essence of Wind compliance, tag all maulers as compliant if they have not been tagged as discompliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.has_essence_of_wind] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    if score @s ghostcraft.class matches 1 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant
# If looking for anti-Essence of Wind sugar compliance, tag all maulers as discompliant if they have not been tagged as compliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.anti_has_essence_of_wind] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliant] \
    if score @s ghostcraft.class matches 1 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant

# If looking for Invisibilty Dust compliance, tag all maulers as compliant if they have not been tagged as discompliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.has_invisibility_dust] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    if score @s ghostcraft.class matches 1 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant
# If looking for anti-Invisibilty Dust sugar compliance, tag all maulers as discompliant if they have not been tagged as compliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.anti_has_invisibility_dust] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliant] \
    if score @s ghostcraft.class matches 1 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant

