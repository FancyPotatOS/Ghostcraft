
# Ensure the master scoreboard exists
scoreboard objectives add ghostcraft.master dummy

# Apply migration
schedule function ghostcraft:meta/migrations/latest_version 5s
