#
#   Get Kit
#   
#   Purpose: To get the id of the kit in the int array at storage 'ghostcraft:data random_kits' and store it in score kit.random.kit_choice ghostcraft.temp
#
#   Input: {index: int}
#


$execute store result score kit.random.kit_choice ghostcraft.temp run data get storage ghostcraft:data random_kits[$(index)]

