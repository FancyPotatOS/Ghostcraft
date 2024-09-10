#
#   Player Setup
#   
#   Purpose: To initialize a new player during the game_ended state
#
#   Input: None
#


execute unless score coming_from_player_logged_in ghostcraft.temp matches 1 run scoreboard players set coming_from_lobby ghostcraft.temp 1
function ghostcraft:game/lobby/player_setup
clear @s
scoreboard players reset coming_from_lobby ghostcraft.temp
scoreboard players reset coming_from_player_logged_in ghostcraft.temp

scoreboard players reset @s ghostcraft.game.map_change.vote

summon armor_stand ~ ~ ~ {Tags:["ghostcraft.game.map_change.player_setup.temp"]}

item replace entity @e[tag=ghostcraft.game.map_change.player_setup.temp] weapon.mainhand with written_book[written_book_content={author:"FancyPotatOS",title:"Map Vote",pages:['[{"text":"\\n   -= Map Vote =-\\n\\n\\nEach page has an available map. Choose one to vote!"}]']}] 1

execute as @e[tag=ghostcraft.game.map_change.player_setup.temp] run function #ghostcraft:map/book_input

item replace entity @s hotbar.0 from entity @e[tag=ghostcraft.game.map_change.player_setup.temp,limit=1] weapon.mainhand

kill @e[tag=ghostcraft.game.map_change.player_setup.temp]
