def alternatingCharacters(string):
    count = 0
    for i in range(len(string)-1):
        if string[i] == string[i+1]:
            count += 1
    return count


n = int(input())
for _ in range(n):
    print(alternatingCharacters(input()))