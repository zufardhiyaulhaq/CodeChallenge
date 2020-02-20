
import sys
from collections import Counter

sys.setrecursionlimit(10000)

# find area coordinate with floodfill + memoize algorithm
def floodfill(row, column, map):
    global area

    # add current row and column as tuple
    memoize.add((row,column))
    
    # only add army in single area
    if map[row][column] != "#" and map[row][column] != ".":
        area += map[row][column]
    
    # recursive function only call if next coordinate is not mountain
    # reduce recursive call if next coordinate has been populate by other recursive call
    if column+1 < maxColumn:
        if (row,column+1) not in memoize and map[row][column+1] != '#':
            floodfill(row, column+1, map)
    
    if column-1 >= 0:
        if (row,column-1) not in memoize and map[row][column-1] != '#':
            floodfill(row, column-1, map)

    if row+1 < maxRow:
        if (row+1,column) not in memoize and map[row+1][column] != '#':
            floodfill(row+1, column, map)

    if row-1 >= 0:     
        if (row-1,column) not in memoize and map[row-1][column] != '#':
            floodfill(row-1, column, map)

########################
##### Main Program #####
########################

for case in range(int(input())):
    maxRow, maxColumn = int(input()), int(input())
    map = [input() for _ in range(maxRow)]

    network = []
    memoize = set()

    for row in range(maxRow):
        for column in range(maxColumn):
            
            # reduce floodfill call if coordinate is mountain and land (only find land with army)
            if map[row][column] == '#' or map[row][column] == '.':
                continue
            
            # only exec floodfill if (row,column) tuple is not in memoize
            elif (row,column) not in memoize:
                # define area variable to populate in function
                area = ""

                # populate the area string with floodfill algorithm
                floodfill(row, column, map)
                network.append(set(area))

    print("Case "+str(case+1)+":")
    
    contested = 0
    finalArea = []

    for area in network:
        if len(area)>1:
            contested += 1
        else:
            finalArea.append(''.join(area))
    
    # sort character in list
    finalArea.sort()

    # create dictionary from list of string
    finalArea = dict(Counter(finalArea))
    
    for k,v in finalArea.items():
        print(k,v)
    
    print ("contested",contested)