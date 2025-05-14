
# If looking for soldier compliance, tag all soldiers as compliant if they have not been tagged as discompliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.soldier] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    if score @s ghostcraft.class matches 2 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant

# If looking for anti-soldier compliance, tag all soldiers as discompliant if they have not been tagged as compliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.anti_soldier] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliant] \
    if score @s ghostcraft.class matches 2 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant


# If looking for arrow compliance, tag all soldiers as compliant if they have not been tagged as discompliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.has_grenade] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    if score @s ghostcraft.class matches 2 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant

# If looking for anti-arrow compliance, tag all soldiers as discompliant if they have not been tagged as compliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.anti_has_grenade] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliant] \
    if score @s ghostcraft.class matches 2 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant


# If looking for speed sugar compliance, tag all soldiers as compliant if they have not been tagged as discompliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.has_speed_sugar] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    if score @s ghostcraft.class matches 2 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant

# If looking for anti-speed sugar compliance, tag all soldiers as discompliant if they have not been tagged as compliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.anti_has_speed_sugar] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliant] \
    if score @s ghostcraft.class matches 2 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant

