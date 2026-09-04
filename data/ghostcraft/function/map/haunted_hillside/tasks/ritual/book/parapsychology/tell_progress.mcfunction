#
#   Read
#   
#   Purpose: To add to the reading score and tell player the progress
#
#   Input: None
#


execute if score @s[tag=!ghostcraft.map.haunted_hillside.tasks.ritual.book.unfinished] ghostcraft.map.haunted_hillside.tasks.ritual.parapsychology.completed matches 100 run title @s actionbar {text:"You've already finished the book",color:gray}
execute if score @s[tag=ghostcraft.map.haunted_hillside.tasks.ritual.book.unfinished] ghostcraft.map.haunted_hillside.tasks.ritual.parapsychology.completed matches 100 run title @s subtitle {text:"You've finished the book!",color:green}
execute if score @s[tag=ghostcraft.map.haunted_hillside.tasks.ritual.book.unfinished] ghostcraft.map.haunted_hillside.tasks.ritual.parapsychology.completed matches 100 run title @s actionbar {text:"You know the right bone to retrieve from the cemetery",color:gray,italic:true}

execute unless score @s ghostcraft.map.haunted_hillside.tasks.ritual.parapsychology.completed matches 100 run title @s actionbar \
[\
    {text:"You've finished ",color:gray}, \
    {score: {name: "@s",objective:"ghostcraft.map.haunted_hillside.tasks.ritual.parapsychology.completed"},color: green}, \
    {text:"%",color: green}, \
    {text:" of the book",color:gray}\
]

title @s subtitle ''
title @s title ''

