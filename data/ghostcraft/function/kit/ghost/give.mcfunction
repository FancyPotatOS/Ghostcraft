
# Basic Items
loot give @s loot ghostcraft:ghost/boost
loot give @s loot ghostcraft:ghost/stab
loot give @s loot ghostcraft:ghost/scare

# Consumables
loot give @s loot ghostcraft:ghost/blink
loot give @s loot ghostcraft:ghost/crafting_table
loot give @s loot ghostcraft:ghost/flashbang
loot give @s loot ghostcraft:ghost/frag_grenade
loot give @s loot ghostcraft:ghost/poison_grenade

# Armor items
item replace entity @s armor.chest with minecraft:netherite_chestplate[unbreakable={},hide_tooltip={},enchantment_glint_override=false,enchantments={"show_in_tooltip":false,"levels":{"binding_curse":1,"vanishing_curse":1}},attribute_modifiers={modifiers:[{type:"generic.armor",amount:-10,id:"ghostcraft.kit.ghost.feet",operation:add_value},{type:"generic.armor_toughness",amount:-10,id:"ghostcraft.kit.ghost.feet",operation:add_value},{type:"generic.knockback_resistance",amount:-1,id:"ghostcraft.kit.ghost.feet",operation:add_value}]}]
item replace entity @s armor.legs with minecraft:netherite_leggings[unbreakable={},hide_tooltip={},enchantment_glint_override=false,enchantments={"show_in_tooltip":false,"levels":{"binding_curse":1,"vanishing_curse":1}},attribute_modifiers={modifiers:[{type:"generic.armor",amount:-10,id:"ghostcraft.kit.ghost.feet",operation:add_value},{type:"generic.armor_toughness",amount:-10,id:"ghostcraft.kit.ghost.feet",operation:add_value},{type:"generic.knockback_resistance",amount:-1,id:"ghostcraft.kit.ghost.feet",operation:add_value}]}]
item replace entity @s armor.feet with minecraft:netherite_boots[unbreakable={},hide_tooltip={},enchantment_glint_override=false,enchantments={"show_in_tooltip":false,"levels":{"binding_curse":1,"vanishing_curse":1,"ghostcraft:ability/pounce/pounce":1}},attribute_modifiers={modifiers:[{type:"generic.armor",amount:-10,id:"ghostcraft.kit.ghost.feet",operation:add_value},{type:"generic.armor_toughness",amount:-10,id:"ghostcraft.kit.ghost.feet",operation:add_value},{type:"generic.knockback_resistance",amount:-1,id:"ghostcraft.kit.ghost.feet",operation:add_value}]}]

# Add abilities
function ghostcraft:ability/feather_falling/grant
tag @s add ghostcraft.ability.pounce
tag @s add ghostcraft.ability.vampire

# Add effects
effect give @s minecraft:invisibility infinite 0 true

# Add immunities
tag @s add ghostcraft.item.flashbang.immune
tag @s add ghostcraft.item.frag_grenade.immune
tag @s add ghostcraft.item.poison_grenade.immune
tag @s add ghostcraft.item.stab.immune
tag @s add ghostcraft.effect.ambient_ghost.invisible
tag @s add effect.ghost.hurt_effect.invisible
