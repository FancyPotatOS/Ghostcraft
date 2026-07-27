#
#   Save User
#   
#   Purpose: To save the current user's configuration storage `ghostcraft:data current_user` to `ghostcraft:data users.#`
#
#   Input: {UUID:str}
#


$data modify storage ghostcraft:data users."$(UUID)" set from storage ghostcraft:data current_user

