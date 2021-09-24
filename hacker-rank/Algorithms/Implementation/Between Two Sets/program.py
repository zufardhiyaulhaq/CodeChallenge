from functools import reduce

def lcm(a, b):
    return a*b//gcd(a,b)

def gcd(a,b):
    while b:
        a, b = b, a%b
    return a

def lcm_list(a):
    return reduce(lcm,a)

def gcd_list(a):
    return reduce(gcd,a)


_ = input()
arrA = list(map(int,input().split()))
arrB = list(map(int,input().split()))

lcmA = lcm_list(arrA)
gcdB = gcd_list(arrB)

lcmAStatic = lcmA
count = 0

while lcmA <= gcdB:
    if gcdB % lcmA == 0:
        count += 1
    lcmA += lcmAStatic

print (count)

