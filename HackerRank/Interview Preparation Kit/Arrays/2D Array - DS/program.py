array = [list(map(int,input().split())) for _ in range(6)]
# print (array)

data = []
for i in range(1,5):
    for j in range(1,5):
        data.append(array[i][j]+array[i-1][j]+array[i-1][j-1]+array[i-1][j+1]+array[i+1][j]+array[i+1][j-1]+array[i+1][j+1])

print (max(data))
