

# Anti-recursion logic for check_compliance function tag call
execute if score kit.random.item_ownership.check_compliance.anti_recursion ghostcraft.temp matches 1 run return 0
scoreboard players set kit.random.item_ownership.check_compliance.anti_recursion ghostcraft.temp 1

# Apply player's class as their picked version
execute as @e[type=#ghostcraft:player] if score @s ghostcraft.class matches 7 run function ghostcraft:kit/random/set_picked_class

# Re-call the check_compliance, which will check all player's actual class instead
function #ghostcraft:game/ghosthunt/item_ownership/check_compliance

# Restore all random class values
execute as @e[type=#ghostcraft:player,tag=ghostcraft.kit.random.is_picked] run function ghostcraft:kit/random/restore_random_class

# Reset anti-recursion flag
scoreboard players reset kit.random.item_ownership.check_compliance.anti_recursion ghostcraft.temp

