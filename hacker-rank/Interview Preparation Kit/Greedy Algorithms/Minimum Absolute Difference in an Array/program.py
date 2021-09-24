# import itertools

dataNumber = int(input())
dataList = list(map(int,input().split()))
dataList.sort()

substact = dataList[-1]-dataList[0]
for i in range(1,dataNumber):
    if dataList[i]-dataList[i-1] < substact:
        substact = dataList[i]-dataList[i-1]

print (substact)
# pairList = [abs(pair[0]-pair[1]) for pair in itertools.combinations(dataList,2)]
# print (min(pairList))
