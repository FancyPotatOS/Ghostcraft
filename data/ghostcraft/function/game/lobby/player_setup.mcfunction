#
#   Player Setup
#   
#   Purpose: To initialize a new player during the lobby state
#
#   Input: None
#

clear @s

function ghostcraft:game/player_reset

function ghostcraft:ability/feather_falling/grant

attribute @s generic.attack_damage modifier add ghostcraft.game.lobby.player -10000 add_value

effect give @s resistance infinite 4 true
effect give @s saturation infinite 4 true
effect give @s instant_health infinite 4 true

experience set @s 0 levels
experience set @s 0 points

give @s stone_button
give @s written_book[written_book_content={author:"FancyPotatOS",title:"Game Controls",pages:['[{"text":"    = GhostCraft =\\n\\n\\n  "},{"color":"dark_green","text": "[Start Game]","hoverEvent": {"action": "show_text","contents": "Click to start"},"clickEvent": {"action": "run_command","value": "/trigger ghostcraft.trigger.game set 1"}},{"text":"\\n\\n  "},{"color":"dark_green","text": "[Spectate]","hoverEvent": {"action": "show_text","contents": "Click to spectate"},"clickEvent": {"action": "run_command","value": "/trigger ghostcraft.trigger.game set 2"}},{"text":"\\n\\n  "},{"color":"dark_green","text": "[Stop Spectating]","hoverEvent": {"action": "show_text","contents": "Click to play"},"clickEvent": {"action": "run_command","value": "/trigger ghostcraft.trigger.game set 3"}},{"text":"\\n\\n  "},{"color":"dark_green","text": "[Toggle Music]","hoverEvent": {"action": "show_text","contents": "Click to toggle music"},"clickEvent": {"action": "run_command","value": "/trigger ghostcraft.trigger.game set 5"}},{"text":"\\n\\n  "},{"color":"blue","text": "[Change Map]","hoverEvent": {"action": "show_text","contents": "Click to change map"},"clickEvent": {"action": "run_command","value": "/trigger ghostcraft.trigger.game set 4"}}]']}] 1

function ghostcraft:kit/class/get_book

execute store result score y ghostcraft.temp run data get entity @s Pos[1]
execute in ghostcraft:empty if score y ghostcraft.temp matches ..0 run tp ~ 125 ~

# Teleport all players to a random lobby entity
execute unless score coming_from_lobby ghostcraft.temp matches 1 run tp @s @e[tag=ghostcraft.map.lobby,limit=1,sort=random]

execute unless score coming_from_lobby ghostcraft.temp matches 1 at @s run spawnpoint @s ~ ~ ~

execute unless score coming_from_lobby ghostcraft.temp matches 1 run gamemode survival

