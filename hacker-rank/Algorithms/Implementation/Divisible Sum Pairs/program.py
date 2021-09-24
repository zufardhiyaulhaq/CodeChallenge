n, k = map(int,input().split())
ar = list(map(int,input().split()))

count = 0
for i in range(n):
    for j in range(i+1,n):
        if i != j and (ar[i]+ar[j])%k == 0:
            count += 1

print (count)


