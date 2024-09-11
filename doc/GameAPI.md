

## Game API

You can add your own game modes using the function tags to include logic into the normal flow of the GhostCraft datapack.

There is only one game mode (Ghost Hunt). I currently don't have a good way to switch modes, but there is still a bit of support for it. I can't guarantee it'll work fine, but you can certainly try!


### Background

The game mode is a state the game is in. It has its own tick function, and is expected to change to another state after the game is done. There are a couple function tags for ease of use and keeping the code modular.


### API

There is a hard limitation to game modes: You must have two teams, Survivors and Ghosts. They are tagged `ghostcraft.survivor` and `ghostcraft.ghost` respectively.

The value that points to the current game mode is score `game ghostcraft.master`. GhostHunt is value <b>0</b>

To ensure there is no conflicts, assign your game mode and game phase to two unique integer IDs. Stop the execution of functions connected to API tags if that ID is not the same as score `game ghostcraft.master` and/or `phase ghostcraft.master`.

The API has two groups of function tags: <b>Game Mode</b> and <b>Game State</b>.

Game Mode is about the actual game being played itself.

Game State is just another state (like the lobby state, map voting state, game start countdown, etc.) It has transition logic to help the flow of the server.

#### Transitioning states

In order to transition to another state, simply set `next_phase ghostcraft.master` to the ID of the target state, and run `#ghostcraft:game/transition`. This will automatically call `#ghostcraft:game/stop` and `#ghostcraft:game/start`  and update score `phase ghostcraft.master` in the correct order

#### Function Tags

- <b>Game State</b>
    - `#ghostcraft:game/tick`
        - <b>Update the state</b>
        - Requires `phase ghostcraft.master` to match
        - This is your entrypoint for running logic every tick
    - `#ghostcraft:game/stop`
        - <b>Stop the state</b>
        - Requires `phase ghostcraft.master` to match
        - Reset all players and other phase-related mechanisms here such as tags, items, and entities
    - `#ghostcraft:game/start`
        - <b>Start the state</b>
        - Requires `phase ghostcraft.master` to match
        - Set up everything related to the phase including player items,player data/tags, and teleporting them where they need to go
    - `#ghostcraft:game/new_player`
        - <b>A player has joined during this state</b>
        - Requires `phase ghostcraft.master` to match
        - Entrypoint for when a player logs into the server while this state is active. It is recommended to completely reset their data first in case they logged off during an old match
- <b>Game Mode</b>
    - `#ghostcraft:game/set_next_phase`
        - <b>Set the phase value</b>
        - Requires `game ghostcraft.master` to match
        - Set score `phase ghostcraft.master` to this phase ID
    - `#ghostcraft:game/player_check`
        - <b>Check if has enough players</b>
        - Requires `game ghostcraft.master` to match
        - Set score `game.player_check.success ghostcraft.temp` to <b>0</b> if there is not enough players to play the game
    - `#ghostcraft:game/on_hurt`
        - <b>Entrypoint for a player hurt event</b>
        - Requires `phase ghostcraft.master` and `game ghostcraft.master` to match
        - Entrypoint for when a player is hurt. Normally after checking the `phase` and `game` score, this would split into survivor or ghost separated logic
    - `#ghostcraft:game/on_death`
        - <b>Entrypoint for a player death event</b>
        - Requires `phase ghostcraft.master` and `game ghostcraft.master` to match
        - Entrypoint for when a player dies. Normally after checking the `phase` and `game` score, this would split into survivor or ghost separated logic
    
