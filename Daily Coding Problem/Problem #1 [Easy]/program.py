import itertools

k = int(input())
dataList = list(itertools.combinations(list(map(int,input().split())),2))
dataList = list(map(sum,dataList))

if k in dataList:
    print("true")
else:
    print("false")