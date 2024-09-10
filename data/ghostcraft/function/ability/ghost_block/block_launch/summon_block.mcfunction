#
#   Summon block
#   
#   Purpose: To summon a block with the provided input data
#
#   Input: {Name:}
#


$summon minecraft:falling_block ~ ~0.5 ~ {CustomNameVisible:0b,Tags:["ghostcraft.crafting_table.falling_block"],BlockState:{Name:"$(Name)"},DropItem:0b,HurtEntities:1b,FallHurtAmount:2,FallHurtMax:12,Motion:[$(motion_x), 0.25d, $(motion_z)],CancelDrop:1b}
