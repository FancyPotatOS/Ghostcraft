
loot give @s loot ghostcraft:kit/hunter/sword

loot give @s loot ghostcraft:kit/hunter/compass

# kit.hunter.flare_count ghostcraft.config
loot give @s loot ghostcraft:kit/hunter/flare

# kit.hunter.trap.count ghostcraft.config
summon armor_stand ~ ~ ~ {Tags:["ghostcraft.kit.hunter.give.temp"]}
execute as @e[tag=ghostcraft.kit.hunter.give.temp] run loot replace entity @s weapon.mainhand loot ghostcraft:item/trap/item
execute as @e[tag=ghostcraft.kit.hunter.give.temp] store result entity @s HandItems[0].components."minecraft:max_damage" int 1 run scoreboard players get kit.hunter.trap.count ghostcraft.config
item replace entity @s hotbar.3 from entity @e[tag=ghostcraft.kit.hunter.give.temp,limit=1] weapon.mainhand
kill @e[tag=ghostcraft.kit.hunter.give.temp]

item replace entity @s armor.head with minecraft:diamond_helmet[unbreakable={},dyed_color=1908001,hide_tooltip={},enchantment_glint_override=false,enchantments={"show_in_tooltip":false,"levels":{"binding_curse":1,"vanishing_curse":1}}]
item replace entity @s armor.feet with minecraft:golden_boots[unbreakable={},dyed_color=1908001,hide_tooltip={},enchantment_glint_override=false,enchantments={"show_in_tooltip":false,"levels":{"binding_curse":1,"vanishing_curse":1}}]

tag @s add ghostcraft.ability.tracking
