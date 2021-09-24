chocolate_length = int(input())
chocolate_list = list(map(int,input().split()))
day, month = map(int,input().split())

count = 0
for i in range(chocolate_length):
    if sum(chocolate_list[i:i+month]) == day:
        count += 1

print (count)

