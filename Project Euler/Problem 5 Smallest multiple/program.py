from functools import reduce

list = [i for i in range(1,1176)]

def gcd(a,b):
    while b:
        a, b = b, a%b
    return a

def lcm(a,b):
    return a*b // gcd(a,b)

def list_lcm(a):
    return reduce(lcm,a)
    
data = list_lcm(list)
print (data)