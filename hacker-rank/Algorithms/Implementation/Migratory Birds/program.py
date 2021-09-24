from collections import Counter
from collections import OrderedDict
from operator import itemgetter

n = int(input())
bird = dict(Counter(input().replace(" ","")))
bird = (sorted(bird.items(), key=lambda x: x[0]))
print (max(bird, key=lambda x: x[1])[0])

