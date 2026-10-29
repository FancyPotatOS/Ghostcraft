#
#   Summon block
#   
#   Purpose: To summon a block with the provided input data
#
#   Input: {id: str, motion_x: double, motion_z: double}
#


# $say summon minecraft:falling_block ~ ~0.5 ~ {Tags:["ct.fb","ghostcraft.ct.fb.new"],BlockState:{id:"$(id)"},DropItem:0b,HurtEntities:1b,FallHurtAmount:2,FallHurtMax:12,Motion:[$(motion_x), 0.25d, $(motion_z)],CancelDrop:1b}
$summon minecraft:falling_block ~ ~0.5 ~ {Tags:["ct.fb","ghostcraft.ct.fb.new"],BlockState:{id:"$(id)"},DropItem:0b,HurtEntities:1b,FallHurtAmount:2,FallHurtMax:12,Motion:[$(motion_x), 0.25d, $(motion_z)],CancelDrop:1b}

