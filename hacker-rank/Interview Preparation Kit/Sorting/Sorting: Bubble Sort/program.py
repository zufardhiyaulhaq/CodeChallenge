_ = input()
data = list(map(int,input().split()))
def bubbleSort(data):
    global swapCount
    for i in range(0,len(data)):
        for j in range(0,len(data)-1):
            if data[j] > data[j+1]:
                 data[j],data[j+1] = data[j+1],data[j]
                 swapCount += 1
    return data

swapCount = 0
data = bubbleSort(data)

print("Array is sorted in",swapCount,"swaps.")
print("First Element:",data[0])
print("Last Element:",data[-1])

# input()
# li = list(map(int, input().split()))
# count = 0

# for j in range(0, len(li)-1):
#     for i in range(0, len(li)-1):
#         if(li[i] > li[i+1]):
#             temp = li[i]
#             li[i] = li[i+1]
#             li[i+1] = temp
#             count+=1

# print("Array is sorted in", count, "swaps.")
# print("First Element:", li[0])
# print("Last Element:", li[-1])