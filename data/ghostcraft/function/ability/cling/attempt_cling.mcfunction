#
#   Attempt Cling
#   
#   Purpose: To attempt to cling to the wall
#
#   Input: None
#


execute if block ~0.30001 ~ ~ #ghostcraft:ability/cling/nonsolid if block ~-0.30001 ~ ~ #ghostcraft:ability/cling/nonsolid if block ~ ~ ~0.30001 #ghostcraft:ability/cling/nonsolid if block ~ ~ ~-0.30001 #ghostcraft:ability/cling/nonsolid run return 0

function ghostcraft:ability/cling/engage

