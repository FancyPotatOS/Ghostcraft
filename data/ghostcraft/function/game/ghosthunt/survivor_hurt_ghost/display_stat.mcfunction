

execute if entity @s[tag=ghostcraft.game.ghosthunt.survivor_hurt_ghost.killer] run return run tellraw @a ["",{text:"👑 ",color:"gold"},{"selector":"@s"},{"text":": "},{"score":{"name":"@s","objective":"ghostcraft.game.ghosthunt.survivor_hurt_ghost.total_damage"}}]

execute if entity @s[tag=ghostcraft.game.ghosthunt.survivor_hurt_ghost.last_attacker] run return run tellraw @a ["",{"selector":"@s"},{"text":": "},{"score":{"name":"@s","objective":"ghostcraft.game.ghosthunt.survivor_hurt_ghost.total_damage"}},{text:" - "},{color:green,italic:true,text:"Last hit"}]

return run tellraw @a ["",{"selector":"@s"},{"text":": "},{"score":{"name":"@s","objective":"ghostcraft.game.ghosthunt.survivor_hurt_ghost.total_damage"}}]

