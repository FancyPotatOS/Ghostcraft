#
#   Start
#   
#   Purpose: To run all start logic for survivor tasks
#
#   Input: None
#


execute unless score game.ghosthunt.tasks.enabled ghostcraft.config matches 1 unless score game.ghosthunt.tasks.map_supported ghostcraft.config matches 1 run return 0

# # Choose a random task type
# Get all subscribed type ids
data modify storage ghostcraft:data tasks set value []
function #ghostcraft:game/ghosthunt/tasks/task_types/subscribe
# Choose a random index
function ghostcraft:game/ghosthunt/tasks/macro/clear
execute store result score task_length ghostcraft.temp run data get storage ghostcraft:data tasks
scoreboard players remove task_length ghostcraft.temp 1
execute store result storage ghostcraft:data macro.max int 1 run scoreboard players get task_length ghostcraft.temp
function ghostcraft:game/ghosthunt/tasks/macro/rng with storage ghostcraft:data macro
# Get the task type id at that random index
function ghostcraft:game/ghosthunt/tasks/macro/clear
execute store result storage ghostcraft:data macro.index int 1 run scoreboard players get rng ghostcraft.temp
data modify storage ghostcraft:data macro.list set from storage ghostcraft:data tasks
function ghostcraft:game/ghosthunt/tasks/macro/get_at_index with storage ghostcraft:data macro

# Save the chosen task type
execute store result score game.ghosthunt.tasks.task_type ghostcraft.config run data get storage ghostcraft:data chosen

# # Choose a random event
# Get all subscribed event ids
data modify storage ghostcraft:data events set value []
function #ghostcraft:game/ghosthunt/tasks/events/subscribe
# Choose a random index
function ghostcraft:game/ghosthunt/tasks/macro/clear
execute store result score event_length ghostcraft.temp run data get storage ghostcraft:data events
scoreboard players remove event_length ghostcraft.temp 1
execute store result storage ghostcraft:data macro.max int 1 run scoreboard players get event_length ghostcraft.temp
function ghostcraft:game/ghosthunt/tasks/macro/rng with storage ghostcraft:data macro
# Get the task type id at that random index
function ghostcraft:game/ghosthunt/tasks/macro/clear
execute store result storage ghostcraft:data macro.index int 1 run scoreboard players get rng ghostcraft.temp
data modify storage ghostcraft:data macro.list set from storage ghostcraft:data events
function ghostcraft:game/ghosthunt/tasks/macro/get_at_index with storage ghostcraft:data macro

# Save the chosen event type
execute store result score game.ghosthunt.tasks.event ghostcraft.config run data get storage ghostcraft:data chosen

# Start off the task logic
function #ghostcraft:game/ghosthunt/tasks/start

