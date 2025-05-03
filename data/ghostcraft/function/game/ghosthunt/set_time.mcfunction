#
#   Set Time
#   
#   Purpose: To randomly set the daytime of the world
#
#   Input: None
#


#execute if predicate {"condition":"random_chance",chance:0.333333} run return run time set day

execute if predicate {"condition":"random_chance",chance:0.5} run return run time set midnight

time set night

