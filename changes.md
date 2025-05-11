
### You can thank GitHub for making this gorgeous md page ugly :((

<details>
    <summary>Stylesheet</summary>
<style>
    .plus {
        color: green
    }
    .minus {
        color: red
    }
    .plus_background {
        background-color: green;
    }
    .avg_background {
        background-color: rgba(128, 128, 128, 0.5)
    }
    .minus_background {
        background-color: rgba(255, 0, 0, 0.5)
    }
    .img-span {
        padding-top: 0em;
        padding-bottom: 0.1em;
    }
    img {
        width: 1.1em;
        height: 1.1em;
        margin-bottom: -0.2em;
        image-rendering: pixelated;
    }
    .ghost-img {
        width: 1em;
        height: 1em;
        margin-left: 0.15em;
        margin-right: 0.15em;
    }
    .heart-img {
        width: 1em;
        height: 1em;
    }
</style>
</details>

# V1.4

## Ghosthunt

$\color{Green}{\textsf{+}}$ Ghost choosing is now weighed towards players who haven't been chosen in a while (+1 to weight per game, resets to 0 when was just ghost)

$\color{Green}{\textsf{+}}$ Players are alerted when there is one survivor or ghost left

$\color{Green}{\textsf{+}}$ Ghost particle frequency now a config item

$\color{Orange}{\textsf{∼}}$ Clears the map of all projectiles and items correctly 

### Ghost

$\color{Green}{\textsf{+}}$ The timer is set to at least a minute left when a ghost kills a survivor

### Survivor

$\color{Green}{\textsf{+}}$ Players start with Resistance V for 1 second when a game starts to prevent any transition damage

## Kits

### Random

$\color{Green}{\textsf{+}}$ Adds a random kit that chooses your class every game! New API function call to subscribe to this option<br/>

### Archer

$\color{Green}{\textsf{+}}$ Archer has no fall damage<br/>

$\color{Green}{\textsf{+}}$ Archer has Speed Sugar, a consumable speed boost<br/>

### Support

$\color{Green}{\textsf{+}}$ Support now has an infinite Instant Health I Splash Potion, that can be used every 15 seconds<br/>

### Shotbow

$\color{Green}{\textsf{+}}$ Shotbow now has Quick Charge II again<br/>

### Hunter

$\color{Green}{\textsf{+}}$ Hunter has a quick netherite pickaxe for attacking<br/>

## Miscellaneous

$\color{Green}{\textsf{+}}$ Books now show current configuration values when given

$\color{Green}{\textsf{+}}$ Some fixes to player lobby spawnpoint being off across games

$\color{Green}{\textsf{+}}$ Ensures players leaving in weird times doesn't affect gameplay

$\color{Green}{\textsf{+}}$ Shows the particle when a player chooses one

$\color{Green}{\textsf{+}}$ Maps now clear items when the games end

$\color{Green}{\textsf{+}}$ Added simple function tag for updating abilities that other games can utilize now

$\color{Green}{\textsf{+}}$ Fixes migrations to work no matter where it starts

