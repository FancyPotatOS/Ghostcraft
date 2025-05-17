#
#   Stop
#   
#   Purpose: To run all stop logic for survivor tasks
#
#   Input: None
#


execute unless score game.ghosthunt.tasks.enabled ghostcraft.config matches 1 unless score game.ghosthunt.tasks.map_supported ghostcraft.config matches 1 run return 0

# Stop off the task logic
function #ghostcraft:game/ghosthunt/tasks/stop

scoreboard players reset game.ghosthunt.tasks.task_type ghostcraft.config
scoreboard players reset game.ghosthunt.tasks.event ghostcraft.config

