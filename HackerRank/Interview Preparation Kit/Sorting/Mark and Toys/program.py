data = input().split()
money = int(data[1])

toys = list(map(int,input().split()))
toys.sort()

toysBuyed = 0

for price in toys:
    if price < money:
        toysBuyed += 1
        money -= price
    else:
        break

print (toysBuyed)