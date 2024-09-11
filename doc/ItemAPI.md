

## Item API

This datapack includes some utilities for making items. There are two main points to assist - snowball event detection functions and carrot on a stick detection.

Hopefully these tools make your custom items creation a little easier.


### Background

The API is split into two groups: snowballs carrot on a stick. They are initially triggered on usage.

The snowballs have a couple triggers that they may 'subscribe' to:

- Ride Trigger
    - Entrypoint for when the snowball lands
    - For example, the Blink item will teleport you to where it lands
- Timer Trigger
    - Entrypoint for when a set timer ends
    - For example, the Frag Grenade will explode after 80 ticks
- Timer Cycle Trigger
    - Entrypoint for every set number of ticks during a timer
    - For example, every 10 ticks the Frag Grenade will let out a little ping


### API

#### Both

- `#ghostcraft:item/tick`
    - <b>Item update logic</b>
    - This is the entrypoint for performing any item-related logic that can't be put into events
    - Use this minimally at most, as this can end up being be the laggiest call


#### Carrot On a Stick

- `#ghostcraft:item/used_coas`
    - <b>A carrot on a stick is used</b>
    - Player must be holding your item in their hand
        - I haven't added any differentiation for which hand the used item is in, so that's up to you to figure out if it's yours.
    - Entrypoint to run any logic needed


#### Snowball

- `#ghostcraft:item/snowball_init`
    - <b>A snowball has been thrown</b>
    - Requires that the snowball's NBT item is your item
        - This should be contained within the snowball's components at `Item.components.\"minecraft:custom_data\"`
        - For example, the grenade has the predicate `ghostcraft:item/survivor_grenade/is_survivor_grenade` which checks the location `Item.components.\"minecraft:custom_data\".ghostcraft{type:"survivor_grenade"}`
    - The executor is the thrown snowball
    - The throwing entity has the tag `ghostcraft.advtrigger.snowball.thrower`

    - <em>In order to use any of the triggers, you must summon an item that will ride the snowball</em>

        - Be sure to give the item a very high `PickupDelay` value (Unless you want it to be able to be picked up)
        - Also be sure to clean up your items and snowballs behind you!
        - An example of this can be found in `ghostcraft:item/frag_grenade/snowball_init`

        - You can give the item the `ghostcraft.item.motion_receive` tag
            - The snowball's Motion values will be in scores `ghostcraft.motion.x`, `ghostcraft.motion.y`, `ghostcraft.motion.z`, scaled by <b>1000</b>
            - This is handy when making the item 'slide' a little further when the snowball lands and disappears

    - There are a couple steps that you must take here in order to 'subscribe' to the other triggers

        - Ride Trigger
            - Tag the summoned item with `ghostcraft.item.ride_trigger`
            - Set the snowball's score `@s ghostcraft.ride_id = next_id ghostcraft.ride_id`
            - Set the item's score `@s ghostcraft.ride_id = next_id ghostcraft.ride_id`
            - Increment the snowball's score `next_id ghostcraft.ride_id` by <b>1</b>
            - An example of this can be found in `ghostcraft:item/frag_grenade/snowball_init`

        - Timer Trigger
            - Tag the snowball with `ghostcraft.item.timer`
            - Set the snowball's score `@s ghostcraft.timer` to your timer duration
            - Optionally, you can make the item maintain the same timer as the snowball it rides
                - Tag the summoned item with `ghostcraft.item.timer_receive`
                - Set the snowball's score `@s ghostcraft.timer_id = next_id ghostcraft.timer_id`
                - Set the item's score `@s ghostcraft.timer_id = next_id ghostcraft.timer_id`
                - Increment the snowball's score `next_id ghostcraft.timer_id` by <b>1</b>
                - This doesn't make the item subscribe to the Timer trigger, but just saves the score for if it's needed later
            - An example of this can be found in `ghostcraft:item/frag_grenade/snowball_init`

        - Timer Cycle Trigger
            - Tag the snowball with `ghostcraft.item.timer_cycle`
            - Set the snowball's score `@s ghostcraft.timer_cycle` to your cycle period
            - Set the snowball's score `@s ghostcraft.timer_cycle_offset` to the timer 'offset', where it will start in the cycle
                - I recommend setting it to <b>1</b>, otherwise it'll trigger on the first frame the snowball is thrown, rather than starting on a fresh cycle.
            - An example of this can be found in `ghostcraft:item/frag_grenade/snowball_init`
    
- `#ghostcraft:item/ride_trigger`
    - <b>A snowball has landed</b>
    - Ensure that the item is your item
    - This is run when an entity with the `ghostcraft.item.ride_trigger` tag is detected with no entity with a matching `ghostcraft.ride_id` score
    - Be sure to carry over any of your important values to the item
        - Add the `ghostcraft.item.timer` tag and/or the `ghostcraft.item.timer_cycle` tag if you want the item to subscribe to the timer/timer_cycle trigger now
        - Set up motion data
        - Set up custom model data (I use this to un-hide the riding entity)
    
- `#ghostcraft:item/timer_trigger`
    - <b>An entity has ended its timer</b>
    - Ensure that the item is your item
    - This is run when an entity with the `ghostcraft.item.timer` tag is found with its score `ghostcraft.timer` below <b>1</b>
    
- `#ghostcraft:item/timer_cycle_trigger`
    - <b>An entity has hit its timer cycle</b>
    - Ensure that the item is your item
    - This is run when an entity with the `ghostcraft.item.timer_cycle` tag is found with the value `(ghostcraft.timer + ghostcraft.timer_cycle_offset) % ghostcraft.timer_cycle` = <b>0</b>

