#
#   Show Health
#   
#   Purpose: To tellraw this entity's health to all players
#
#   Input: None
#

tag @s add ghostcraft.game.ghosthunt.display.health
execute if entity @s[tag=ghostcraft.game.ghosthunt.role.survivor] unless entity @s[tag=ghostcraft.survivor] unless entity @s[tag=ghostcraft.ghost] run tellraw @a \
[\
    {\
        type:"selector",\
        "selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"\
    },\
    {\
        "text":" - 💀"\
    }\
]
execute if entity @s[tag=ghostcraft.game.ghosthunt.role.ghost] unless entity @s[tag=ghostcraft.survivor] unless entity @s[tag=ghostcraft.ghost] run tellraw @a \
[\
    {\
        type:"selector",\
        "selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"\
    },\
    {\
        "text":" - 💀"\
    }\
]
tag @s remove ghostcraft.game.ghosthunt.display.health

execute if entity @s[tag=ghostcraft.game.ghosthunt.role.survivor] unless entity @s[tag=ghostcraft.survivor] run return 0
execute if entity @s[tag=ghostcraft.game.ghosthunt.role.ghost] unless entity @s[tag=ghostcraft.ghost] run return 0

execute store result score health ghostcraft.temp run data get entity @s Health 100
scoreboard players set scale ghostcraft.temp 100
scoreboard players add health ghostcraft.temp 5
scoreboard players operation health ghostcraft.temp /= scale ghostcraft.temp
tag @s add ghostcraft.game.ghosthunt.display.health
execute if score health ghostcraft.temp matches ..1 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - 💓"}]
execute if score health ghostcraft.temp matches 2 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤"}]
execute if score health ghostcraft.temp matches 3 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤💓"}]
execute if score health ghostcraft.temp matches 4 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤"}]
execute if score health ghostcraft.temp matches 5 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤💓"}]
execute if score health ghostcraft.temp matches 6 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤"}]
execute if score health ghostcraft.temp matches 7 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤💓"}]
execute if score health ghostcraft.temp matches 8 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤❤"}]
execute if score health ghostcraft.temp matches 9 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤❤💓"}]
execute if score health ghostcraft.temp matches 10 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤❤❤"}]
execute if score health ghostcraft.temp matches 11 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤❤❤💓"}]
execute if score health ghostcraft.temp matches 12 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤❤❤❤"}]
execute if score health ghostcraft.temp matches 13 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤❤❤❤💓"}]
execute if score health ghostcraft.temp matches 14 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤❤❤❤❤"}]
execute if score health ghostcraft.temp matches 15 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤❤❤❤❤💓"}]
execute if score health ghostcraft.temp matches 16 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤❤❤❤❤❤"}]
execute if score health ghostcraft.temp matches 17 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤❤❤❤❤❤💓"}]
execute if score health ghostcraft.temp matches 18 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤❤❤❤❤❤❤"}]
execute if score health ghostcraft.temp matches 19 run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤❤❤❤❤❤❤💓"}]
execute if score health ghostcraft.temp matches 20.. run tellraw @a [\
    {type:"selector","selector":"@e[type=#ghostcraft:player,tag=ghostcraft.game.ghosthunt.display.health,limit=1]"},\
    {"text":" - ❤❤❤❤❤❤❤❤❤❤"}]

tag @s remove ghostcraft.game.ghosthunt.display.health

