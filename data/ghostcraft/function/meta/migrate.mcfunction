
# Ensure the master scoreboard exists
scoreboard objectives add ghostcraft.master dummy

# Apply migration if required
execute unless score version ghostcraft.master matches 1.. run function ghostcraft:meta/migrations/latest_version
