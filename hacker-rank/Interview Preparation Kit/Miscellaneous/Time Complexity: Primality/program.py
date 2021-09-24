from math import sqrt 

n = int(input())
data = [int(input()) for _ in range(n)]

def primality(number):
    if number <= 1:
        return "Not prime"
    if number <= 3:
        return "Prime"
    elif number %2 == 0 or number %3 == 0:
        return "Not prime"
    else:
        for i in range(3, int(sqrt(number)+1), 2):
            if number % i == 0:
                return "Not prime"
    return "Prime"

for number in data:
    print (primality(number))