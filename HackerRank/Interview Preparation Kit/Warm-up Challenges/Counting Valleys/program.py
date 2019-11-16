dataCount = int(input())
data = input()

valleyCount = 0
level = 0

for char in data:
    if char == "U":
        level += 1
    if char == "D":
        level -= 1
    if (char == "U" and level == 0):
        valleyCount += 1
    
print(valleyCount)
