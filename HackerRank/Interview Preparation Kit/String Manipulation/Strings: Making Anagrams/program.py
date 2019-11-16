import collections

a = collections.Counter(list(input()))
b = collections.Counter(list(input()))
ab = a-b
ba = b-a
print (int(sum(ab.values()))+int(sum(ba.values())))



# print (len(a.symmetric_difference(b)))
