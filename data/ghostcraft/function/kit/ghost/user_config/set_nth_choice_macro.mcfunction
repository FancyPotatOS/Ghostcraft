#
#   Set Nth Item
#   
#   Purpose: To set this player's configured nth ghost choice
#
#   Input: {index: int, new_choice: str}
#


$data modify storage ghostcraft:data current_user.ghost.choices[$(index)] set value "$(new_choice)"

