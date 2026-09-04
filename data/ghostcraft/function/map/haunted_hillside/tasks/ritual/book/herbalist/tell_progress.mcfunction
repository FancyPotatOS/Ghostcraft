#
#   Read
#   
#   Purpose: To add to the reading score and tell player the progress
#
#   Input: None
#


title @s subtitle ''
execute if score @s[tag=!ghostcraft.map.haunted_hillside.tasks.ritual.book.unfinished] ghostcraft.map.haunted_hillside.tasks.ritual.herbalist.completed matches 100 run title @s actionbar {text:"You've already finished the book",color:gray}
execute if score @s[tag=ghostcraft.map.haunted_hillside.tasks.ritual.book.unfinished] ghostcraft.map.haunted_hillside.tasks.ritual.herbalist.completed matches 100 run title @s subtitle {text:"You've finished the book!",color:green}
execute if score @s[tag=ghostcraft.map.haunted_hillside.tasks.ritual.book.unfinished] ghostcraft.map.haunted_hillside.tasks.ritual.herbalist.completed matches 100 run title @s actionbar {text:"Gather all plants found near the trees",color:gray,italic:true}

execute unless score @s ghostcraft.map.haunted_hillside.tasks.ritual.herbalist.completed matches 100 run title @s actionbar \
[\
    {text:"You've finished ",color:gray}, \
    {score: {name: "@s",objective:"ghostcraft.map.haunted_hillside.tasks.ritual.herbalist.completed"},color: green}, \
    {text:"%",color: green}, \
    {text:" of the book",color:gray}\
]

title @s title ''

