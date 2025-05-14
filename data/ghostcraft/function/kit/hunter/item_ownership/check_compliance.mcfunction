
# If looking for hunter compliance, tag all hunters as compliant if they have not been tagged as discompliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.hunter] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    if score @s ghostcraft.class matches 6 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant

# If looking for anti-hunter compliance, tag all hunters as discompliant if they have not been tagged as compliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.anti_hunter] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliant] \
    if score @s ghostcraft.class matches 6 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant


# If looking for arrow compliance, tag all hunters as compliant if they have not been tagged as discompliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.has_flare] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    if score @s ghostcraft.class matches 6 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant

# If looking for anti-arrow compliance, tag all hunters as discompliant if they have not been tagged as compliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.anti_has_flare] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliant] \
    if score @s ghostcraft.class matches 6 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant


# If looking for speed sugar compliance, tag all hunters as compliant if they have not been tagged as discompliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.has_speed_sugar] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.compliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    if score @s ghostcraft.class matches 6 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.compliant

# If looking for anti-speed sugar compliance, tag all hunters as discompliant if they have not been tagged as compliant already
execute \
    if entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliance.kit.anti_has_speed_sugar] \
    as @e[type=#ghostcraft:player,tag=!ghostcraft.game.ghosthunt.item_ownership.discompliant] \
    unless entity @s[tag=ghostcraft.game.ghosthunt.item_ownership.compliant] \
    if score @s ghostcraft.class matches 6 \
    run tag @s add ghostcraft.game.ghosthunt.item_ownership.discompliant

