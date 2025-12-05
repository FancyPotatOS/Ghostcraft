#
#   Player Setup
#   
#   Purpose: To initialize a new player during the game_ended state
#
#   Input: None
#


execute unless score coming_from_player_logged_in ghostcraft.temp matches 1 run scoreboard players set coming_from_lobby ghostcraft.temp 1
function ghostcraft:game/lobby/player_setup
function ghostcraft:logic/clear_entity
scoreboard players reset coming_from_lobby ghostcraft.temp
scoreboard players reset coming_from_player_logged_in ghostcraft.temp

scoreboard players reset @s ghostcraft.game.map_change.vote

item replace entity @s weapon.mainhand with written_book[written_book_content={author:"FancyPotatOS",title:"Map Vote",pages:[[{"text":"    -= Map Vote =-                              Each page has an available map.                                 Choose one to vote!"}]]}] 1

function #ghostcraft:map/book_input

kill @e[tag=ghostcraft.game.map_change.player_setup.temp]
