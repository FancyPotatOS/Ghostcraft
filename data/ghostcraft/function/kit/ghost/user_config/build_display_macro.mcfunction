#
#   Build Display Macro
#   
#   Purpose: To append an entry to the dialog macro
#
#   Input: {index:int, index_plus_one:int, name:str, sprite:str}
#


$data modify storage ghostcraft:data dialog_coll append value {type:'minecraft:plain_message',contents:[{atlas:'minecraft:items',sprite:'$(sprite)'},{text:' $(name)    ',extra:[{text:'[Next]',color:dark_green,italic:false,click_event:{action:run_command,command:'/trigger ghostcraft.kit.ghost.cycle_nth_trigger set $(index_plus_one)'}}]}]}

