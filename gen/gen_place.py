total = """ghostcraft:map/blackout/center/higher
0 0 0
-5 -22 -7
ghostcraft:map/blackout/center/lower
0 -1 0
-5 -26 -7
ghostcraft:map/blackout/tower
0 0 1
-2 -27 10
ghostcraft:map/blackout/apartment/higher
1 0 0
20 -12 -17
ghostcraft:map/blackout/apartment/lower
1 -1 0
20 -26 -17
ghostcraft:map/blackout/apartment/mid
1 -1 1
14 -26 -16
ghostcraft:map/blackout/church/higher
-1 0 0
-24 -19 -5
ghostcraft:map/blackout/church/lower
-1 -1 0
-24 -35 -5
ghostcraft:map/blackout/bridge
-1 0 1
-24 -35 9
ghostcraft:map/blackout/bottom
-1 -1 1
-14 -43 -4
ghostcraft:map/blackout/mine
0 0 -1
-6 -27 -22"""

lines = total.split("\n")

triplets = [lines[(i * 3):((i * 3)+3)] for i in range(int(len(lines)/3))]
triplets = [(x[0], ([int(y) for y in x[1].split(" ")]), ([int(y) for y in x[2].split(" ")])) for x in triplets]

pairs = [(x[0], (x[2][0] + x[1][0], x[2][1] + x[1][1], x[2][2] + x[1][2])) for x in triplets]

[print("place template _NAME_ ~_XOFF_ ~_YOFF_ ~_ZOFF_".replace("_NAME_", pair[0]).replace("_XOFF_", str(pair[1][0])).replace("_YOFF_", str(pair[1][1])).replace("_ZOFF_", str(pair[1][2]))) for pair in pairs]
