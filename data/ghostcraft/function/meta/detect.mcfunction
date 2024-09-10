
execute unless score version.ghostcraft fpconflict.conflict_map matches 1 run tellraw @a ["",{"text":"[Conflict]","color":"red"}," - ",{"text":"GhostCraft Datapack ","color":"blue"},"(",{"text":"Overlapping versions.","italic":true,"color":"dark_aqua"},")"]

tellraw @a {"text":"[WARNING] - The GhostCraft datapack doesn't play well with other datapacks/preexisting worlds. Please be sure you're prepared to lose chunks of your world by running this datapack.","color":"red"}
