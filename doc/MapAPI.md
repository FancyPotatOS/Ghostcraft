

## Map API

You can add your own maps using the function tags to include logic into the normal flow of the GhostCraft datapack.

There are two maps included so far (Blackout and Temple), both of which are from the original game. You can use those for reference to see how to properly implement your own maps.


### Background

Everything is done within the `ghostcraft:empty` dimension. To purge the world of an existing map, there are two steps:

1. Delete any entities with the tag `ghostcraft.map`
1. Delete any item displays in the dimension
    - No idea why I decided to include this, although the Blackout map has 4 item display entities in the lobby. This is when I was naive enough to use `setworldspawn` and override the overworld generation in the initial creation...
1. Clear the blocks
    - The range that is cleared is (-64, 64, -64) to (60, 248, 60)
        - Be sure your map never exceeds these boundaries otherwise they'll persist on map changing

The function to clear the world is `ghostcraft:world/clear`


### API

The API is contained entirely within two function tags. Include your own functions within these tags to implement a map.

To ensure there is no function conflicts, assign your map a unique integer ID, and stop the execution of some of the functions if that ID is not the same as score `map ghostcraft.config`. Have a look at `ghostcraft:map/blackout/test/setup` for reference.

- `#ghostcraft:map/setup`
    - <b>Place your map</b>
    - Requires `map ghostcraft.config` to match
    - Place your map into the world
        - This includes the lobby
        - Your map and lobby should NEVER exceed (-64, 64, -64) to (60, 248, 60)
        - This allows it to be cleared from the world properly
        - The execution location is not certain, so please don't use relative coordinates `~ ~ ~`
        
    - <b>All map entities must be tagged with `ghostcraft.map`!!!</b>
    - Place marker entities where you want your locations to be
        - During gameplay, the appropriate markers will be chosen randomly when moving the players
        - Use the specific tags to designate the location:
            1. `ghostcraft.map.lobby`
                - Lobby spawnpoint
            1. `ghostcraft.map.survivor`
                - Survivor spawnpoint
            1. `ghostcraft.map.ghost`
                - Ghost spawnpoint
- `#ghostcraft:map/display_set`
    - <b>Display that your map won the vote</b>
    - Requires `map ghostcraft.config` to match
    - A simple 'The map was set to [Map]' will suffice
- `#ghostcraft:map/book_input`
    - <b>Include a page to vote for your map</b>
    - Insert a page in the written book in the weapon.mainhand slot of the executing entity.
    - Include a click action for the players to vote
        - It should run `/trigger ghostcraft.game.map_change.vote set <ID>`, where the ID is your map ID
- `#ghostcraft:map/compare_id`
    - <b>Check if the winning vote was valid</b>
    - To check if the score `target_map ghostcraft.temp` matches your map ID
    - If so, set the score `map_exists ghostcraft.temp` to 1.
        - This is the flag saying the map a player voted for is an existing map, to stop manual `/trigger` shenanigans
    

