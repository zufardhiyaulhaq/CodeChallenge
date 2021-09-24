n = int(input())
word = [[set(input()),set(input())] for _ in range(n)]

def checkSubString(string1,string2):
    data = string1.intersection(string2)
    if bool(data) == True:
        print ("YES")
    else:
        print ("NO")

for i in range(n):
    checkSubString(word[i][0],word[i][1])
