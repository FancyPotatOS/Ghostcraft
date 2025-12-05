
import os


def replace_file(file_name: str, replacements:dict[str,str]):
    new_file_name = replace_all(file_name, replacements)

    file_contents = ""
    with open(file_name, "r") as file:
        file_contents = "".join(file.readlines())
    
    file_contents = replace_all(file_contents, replacements)
    
    with open(new_file_name, "w") as file:
        file.write(file_contents)


def replace_all(value: str, replacements:dict[str,str]):
    for key in replacements.keys():
        value = value.replace(key, replacements[key])
    
    return value


replacements = {}
for i in range(20):
    i += 1
    replacements["_DAMAGE_"] = str(i)

    replace_file("data/ghostcraft/advancement/game/ghosthunt/survivor_hurt_ghost/melee/_DAMAGE_.json", replacements)
    replace_file("data/ghostcraft/advancement/game/ghosthunt/survivor_hurt_ghost/melee/_DAMAGE_.json", replacements)




# Who knows what this is for!
exit()
os.chdir("gen")

chunk = 31
horizontal_max = 64
length = int(horizontal_max * 2 / chunk)
height = 256

lines = []

for y in range(int(height / chunk)):
    y = y * chunk
    y = int(max(64, min(height, y)))
    for x in range(length):
        x = x * chunk - horizontal_max
        for z in range(length):
            z = z * chunk - horizontal_max
            lines.append("fill " + str(x) + " " + str(y) + " " + str(z) + " " + str(x + chunk) + " " + str(y + chunk) + " " + str(z + chunk) + " minecraft:air\n")

max_lines = 10000

groups = []
current_group = []
for line in lines:
    current_group.append(line)

    if len(current_group) == max_lines:
        groups.append(current_group)
        current_group = []

if len(current_group):
    groups.append(current_group)


index = 0
for group in groups:
    with open(str(index) + ".mcfunction", "w") as file:
        file.writelines(group)
        index += 1
