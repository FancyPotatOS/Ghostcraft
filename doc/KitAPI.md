

## Kit API

You can add your own kits using the function tags to include logic into the normal flow of the GhostCraft datapack.

There are a bunch of kits specified under `#ghostcraft:kit/*`. Feel free to use these for reference.

Currently, GhostCraft only supports changing Survivor kits.


### Background

Internally I use kit/class interchangeably, so please keep that in mind

I recommend using the configuration scoreboard to save+set any item amounts or other values that could be changeable, as it's nice for users to adjust the kits for themselves and find their own balance.

My own implementation goes back/forth between using commands or loot tables to provide kit items. I try to defined ALL special items (like grenades and grappling hooks) with loot tables. This way I can then apply the configuration and provide the right amount per kit, or reuse them if need be.


### API

The API is all function tags under the path `#ghostcraft:kit/*`. Include your own functions within these tags to implement a kit.

The player's current class is set in the scoreboard `ghostcraft.class`. You will need to choose a unique ID for you kit so it can be saved in the scoreboard. There is a trigger scoreboard `ghostcraft.trigger.class` where the player can choose their class.

- `#ghostcraft:kit/class/trigger`
    - <b>Set the player's class score</b>
    - Requires `@s ghostcraft.trigger.class` to match
    - Set the player's score `ghostcraft.class` to your kit ID
    - Give the player the tag `ghostcraft.class.accepted`
- `#ghostcraft:kit/config/reset`
    - <b>Reset the kit configuration values</b>
    - Reset all kit-related configuration items in the scoreboard `ghostcraft.config`
- `#ghostcraft:kit/book_insert`
    - <b>Add a page for this class option</b>
    - Insert a page in the written book in the `HandItems[0]` slot of the executing entity, which is then provided to the players to select a class
- `#ghostcraft:kit/give`
    - <b>Give the kit</b>
    - Requires `@s ghostcraft.class` to match
    - Provide all items and tags related to the kit
    - This is called immediately before a game is started and players are teleported into the map
- `#ghostcraft:kit/clear`
    - <b>Clear the kit</b>
    - Remove any tags and non-item-related stuff
- `#ghostcraft:kit/tell_changed`
    - <b>Provide feedback that the class was selected</b>
    - Requires `@s ghostcraft.class` to match
    - Display a simple message that the player's class was changed
- `#ghostcraft:kit/random/subscribe_kit`
    - <b>Subscribe this kit as one able to be chosen randomly</b>
    - Optional.
    - Append your kit ID to the list in storage `ghostcraft:data random_kits`
    - Ensure that calls to your kit-related functions (like ability-related tick functions and items) work even if the player's `ghostcraft.class` score does NOT match!
        - For example, your kit logic finds the player mid-game by some kind of tag or item, rather that relying on that particular scoreboard value

### Abilities

If your kit uses abilities, try to attach them to custom enchantments or advancements - these will help reduce lag. If it's not possible, there is a tick function tag you can attach to.
- `#ghostcraft:ability/tick`
    - <b>Run an ability function every tick</b>
    - It is recommended that you tag every player with the ability
    - Attach a 'test' function to this tag which checks that the player has the tag before running any other functions

