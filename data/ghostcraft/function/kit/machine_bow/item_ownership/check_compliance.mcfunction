
# If looking for machine bow compliance, tag all machine bows as compliant if they have not been tagged as discompliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.machine_bow] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    if score @s ghostcraft.class matches 5 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant

# If looking for anti-machine bow compliance, tag all machine bows as discompliant if they have not been tagged as compliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.anti_machine_bow] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliant] \
    if score @s ghostcraft.class matches 5 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant


# If looking for arrow compliance, tag all machine bows as compliant if they have not been tagged as discompliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.has_machine_bow_arrow] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    if score @s ghostcraft.class matches 5 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant

# If looking for anti-arrow compliance, tag all machine bows as discompliant if they have not been tagged as compliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.anti_has_machine_bow_arrow] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliant] \
    if score @s ghostcraft.class matches 5 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant


# If looking for speed sugar compliance, tag all machine bows as compliant if they have not been tagged as discompliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.has_arrow] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    if score @s ghostcraft.class matches 5 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant

# If looking for anti-speed sugar compliance, tag all machine bows as discompliant if they have not been tagged as compliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.anti_has_arrow] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliant] \
    if score @s ghostcraft.class matches 5 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant

