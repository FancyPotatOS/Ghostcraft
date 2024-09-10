

# GhostCraft
<em>Recreated by FancyPotatOS</em>

<em>Probably owned by [ShotBow Network](https://shotbow.net/)</em>


This is my attempt at remaking a GhostCraft clone using just vanilla resources. It currently has everything I initially planned on doing - including kits and maps!


I put way too much effort into making it 'expandable'. There is a lot of support for custom items, maps, and kits. I'll get around to documenting how to add your own soon enough.

There is a lot of config items too, to adjust how many arrows/potions you get, etc. as well as functional ones, like how many games must occur before you can vote for a new map.

Please enjoy this little piece of 2013 Minecraft love



## Issues

- Machine bow may be overpowered


## Tags

- Abilities
  - ghostcraft.ability.feather_falling
  - ghostcraft.ability.pounce
  - ghostcraft.ability.vampire
  - ghostcraft.ability.tracking
  - ghostcraft.ability.ghost_energy
- Immunity
  - ghostcraft.item.flashbang.immune
  - ghostcraft.item.frag_grenade.immune
  - ghostcraft.item.poison_grenade.immune
  - ghostcraft.item.survivor_grenade.immune
  - ghostcraft.item.stab.immune

  - ghostcraft.effect.ambient_ghost.invisible
  - effect.ghost.hurt_effect.invisible
  - effect.player.hurt_effect.invisible
- Functional
  - ghostcraft.player.initialized
  - ghostcraft.item.timer_cycle
  - ghostcraft.item.timer
  - ghostcraft.item.motion_sync
  - ghostcraft.item.timer_sync
  - ghostcraft.class.accepted
- Map
  - ghostcraft.map
  - ghostcraft.map.lobby
  - ghostcraft.map.survivor
  - ghostcraft.map.ghost
- Role
  - ghostcraft.ghost
  - ghostcraft.survivor
  - ghostcraft.spectator


## Config

- `is_server ghostcraft.config`
  - 0 if server works with [player_motion](https://modrinth.com/datapack/player_motion) datapack
  - 1 otherwise







## OLD

### Issues
- Track stats
  - Ghost kills
    - How killed
  - Survivor Kills
    - How killed
  - Team kills
  - Damage dealt
  - Damage taken
  - Arrows shot
  - Wins
  - Losses
  - Accidental deaths
  - Players against
  - Players assisting
- Health display/name color
- No hitlag XXX
- Needs to init (phase ghostcraft.master => 1) XXX
- Class signs XXX
- Control Book XXX
- Start/Stop/Spectator signs XXX
- Spawning XXX
  - Solid blocks under marker
  - No roof
  - Fill roof with block_display?



### Tags

- Role
  - ghostcraft.ghost
  - ghostcraft.survivor
  - ghostcraft.spectator
- Abilities
  - ghostcraft.ability.feather_falling
  - ghostcraft.ability.pounce
  - ghostcraft.ability.vampire
  - ghostcraft.ability.cling
  - ghostcraft.ability.health_indicator
- Immunity
  - ghostcraft.item.flashbang.immune
  - ghostcraft.item.frag_grenade.immune
  - ghostcraft.item.poison_grenade.immune
  - ghostcraft.item.survivor_grenade.immune
- Functional
  - ghostcraft.item.timer_cycle
  - ghostcraft.item.timer
  - ghostcraft.item.motion_sync
  - ghostcraft.item.timer_sync
  - ghostcraft.anticheat.player
  - ghostcraft.crafting_table.falling_block
  - ghostcraft.effect.ambient_ghost
  - ghostcraft.effect.ambient_ghost.invisible
- Accounting
  - ghostcraft.arrow.accounted
  - ghostcraft.uuid


### Config

- Global
  - effect.ambient_ghost.particles = 0


### Phase

- 0
  - Game hasn't started
- 1
  - Waiting for players
- 2
  - Getting ready to start
- 3
  - Game in progress
- 4
  - Game ended
- 5
  - Shutting down

