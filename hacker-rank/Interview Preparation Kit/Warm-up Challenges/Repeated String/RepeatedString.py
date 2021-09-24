import math

def repeatedString(s, n):
    if s == "a":
        return n

    return (s.count("a") * (n//len(s)) + s[:n-((n//len(s))*len(s))].count("a")) 
    # atau
    # return (s.count("a") * (n//len(s)) + s[:n%len(s)].count("a")) 

s = input()
n = int(input())
print (repeatedString(s,n))
