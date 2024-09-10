
import os
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
