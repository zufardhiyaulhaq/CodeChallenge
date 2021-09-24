n = int(input())
data = list(map(int,input().split()))

def maxSubsetSum(n, arr):
    incl = [arr[0]]
    excl = [0]

    for i in range(1,n):
        incl.append(excl[i-1]+arr[i])
        excl.append(max(excl[i-1],incl[i-1]))
    
    return max(incl[n-1],excl[n-1])

print (maxSubsetSum(n,data))