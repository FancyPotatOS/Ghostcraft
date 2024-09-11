


### Configuration

This is a compiled list of the config values. It changes things like  how many arrows/potions you get, etc. It includes functional values too, like how many games must occur before you can vote for a new map.

The configuration is stored under the scoreboard `ghostcraft.config`. To change a value, just run `/scoreboard players set <config item> ghostcraft.config <value>`

For example, to change the amount of arrows an archer to 15 starts with, run `/scoreboard players set kit.archer.arrow_count ghostcraft.config 15`


#### Values


- Gameplay
    - `required_players`
        - The amount of players required to play. 
        - The function `ghostcraft:game/count_players` will fail if there are not enough players to match this score
        - This should be set as soon as the gamemode is 'chosen'
            - For example, Ghost Hunt sets this value on-demand in `ghostcraft:game/ghosthunt/player_check`
    - `map.change_cooldown`
        - The number of games required before you can vote to change the map
        - The actual counter for this value is set at `map.change_cooldown ghostcraft.temp`
            - Changing this score to 0 allows you to change the map immediately

- Ghost Hunt
    - `game.ghosthunt.ghosts`
        - The number of ghosts chosen to play
        - Should never be set below 1
    - `game.ghosthunt.min_survivors`
        - The minimum number of survivors required to play
        - Should never be set below 1
    - `game.ghosthunt.game_time`
        - The amount of time (in ticks) that the game will go for
        - The survivors win if time runs out
        
- Abilities
    - `ability.ghost_energy.max_energy`
    - The amount of energy a ghost can have. Increases by 1 every tick.
    - `ability.pounce.energy_requirement`
    - The amount of energy a Pounce requires.

- Items
    - Boost
        - `item.boost.energy_requirement`
            - The amount of energy required to use Boost
    - Stab
        - `item.stab.energy_requirement`
            - The amount of energy required to use Stab

- Kits
    - Archer
        - `kit.archer.arrow_count`
            - The amount of arrows you start with
    - Shotbow
        - `kit.shotbow.arrow_count`
            - The amount of arrows you start with
    - Support
        - `kit.support.potion.count`
            - The amount of Instant Health II potions you start with
    - Soldier
        - `kit.soldier.grenade_count`
            - The amount of grenades you start with
        - `kit.soldier.potion.splash.count`
            - The amount of Courage splash potions you start with
        - `kit.soldier.potion.normal.count`
            - The amount of normal Courage potions you start with
    - Machinebow
        - `kit.machine_bow.arrow_count`
            - The amount of arrows you start with
    - Ghost
        - `kit.ghost.blink.count`
            - The amount of Blink teleports you start with
        - `kit.ghost.crafting_table.count`
            - The amount of Crafting Tables you start with
        - `kit.ghost.flashbang.count`
            - The amount of Flashbangs you start with
        - `kit.ghost.poison_grenade.count`
            - The amount of Poison Grenades you start with
        - `kit.ghost.frag_grenade.count`
            - The amount of Frag Grenades you start with
        - `effect.ambient_ghost.particles`
            - The ambient particle of the ghost
            - Defaults to the barrier particle if not set
            - 0 is the fire particle (And the only value at the moment)

- Technical
    - `is_server`
        - 0 if server works with [player_motion](https://modrinth.com/datapack/player_motion) datapack
        - 1 otherwise (This isn't supported at the moment.)
    - `map ghostcraft.config`
        - The current map ID
        - Should only be set during proper map changing protocol





