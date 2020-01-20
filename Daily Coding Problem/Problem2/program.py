indexLength = int(input())
data = list(map(int, input().split()))

sumProduct = 1

for i in data:
    sumProduct = sumProduct * i

dataSum = []
for i in data:
    dataSum.append(int(sumProduct / i))

print(dataSum)
