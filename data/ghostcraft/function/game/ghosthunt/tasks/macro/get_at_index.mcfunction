#
#   Get At Index
#   
#   Purpose: To get a value in an array in storage 'ghostcraft:data macro.list' at a specific index and store it in storage 'ghostcraft:data chosen'
#
#   Input: {list: Array, index: int}
#


$data modify storage ghostcraft:data chosen set from storage ghostcraft:data macro.list[$(index)]

