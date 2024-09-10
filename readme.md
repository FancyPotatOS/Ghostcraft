

# GhostCraft
<em>Recreated by FancyPotatOS</em>

<em>Probably owned by [ShotBow Network](https://shotbow.net/)</em>


This is my attempt at remaking a GhostCraft clone using just vanilla resources. It currently has everything I initially planned on doing - including kits and maps!


### Requirements
- The [player_motion](https://modrinth.com/datapack/player_motion) datapack
- The [BlockState](https://github.com/Triton365/BlockState) datapack


### Configuration
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
  - 1 otherwise (This won't work, don't try...)



## Server Details

If you are running a server, please ensure that it is compatible with the [player_motion](https://modrinth.com/datapack/player_motion) datapack. Some optimizations from servers like Paper break some functionality like ghost boosting.

This datapack requires the included resource pack. Here is some of the <b>server.properties</b> values you can set to ensure the players have access to it and use it (Otherwise you can cheat and see the ghost easily)

It includes a google drive link to my copy of the resource pack, so feel free to use it.

- require-resource-pack=true
- resource-pack=https://drive.google.com/uc?export=download&id=1maLEcFD1UlEJ5Wbpb0_RgZ1rNojbl2c6
- resource-pack-prompt=This resource pack is required to play GhostCraft. Compatible with vanilla Minecraft.


