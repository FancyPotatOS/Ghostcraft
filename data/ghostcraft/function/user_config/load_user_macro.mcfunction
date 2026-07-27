#
#   Load User
#   
#   Purpose: To load the user's configuration from storage `ghostcraft:data users.#` to `ghostcraft:data current_user`
#
#   Input: None
#


$data modify storage ghostcraft:data current_user set from storage ghostcraft:data users."$(UUID)"

