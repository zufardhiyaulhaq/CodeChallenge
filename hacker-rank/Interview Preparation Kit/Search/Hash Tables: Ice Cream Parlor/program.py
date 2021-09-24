def whatFlavors(flavours, money):
    map = {}
    
    for i in range(len(flavours)):
        cost = flavours[i]
        compliment = money - cost
        if compliment in map:
            # print (map)
            return ([str(flavours.index(compliment)+1),str(i+1)])
        else:
            map[cost] = compliment
    

for _ in range(int(input())):
    money = int(input())
    _ = input()
    flavours = list(map(int,input().split()))
    print (' '.join(whatFlavors(flavours, money)))
