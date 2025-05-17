#
#   Tick
#   
#   Purpose: To update all logic for survivor tasks
#
#   Input: None
#


execute unless score game.ghosthunt.tasks.enabled ghostcraft.config matches 1 unless score game.ghosthunt.tasks.map_supported ghostcraft.config matches 1 run return 0

# Tick the task logic
function #ghostcraft:game/ghosthunt/tasks/tick

