nk = input().split()
n = int(nk[0])
k = int(nk[1])

luckBalance = 0
contest = [list(map(int,input().split())) for _ in range(n)]
contest.sort(reverse=True)

for data in contest:
    if data[1] == 0:
        luckBalance += data[0]
    elif k > 0:
        luckBalance += data[0]
        k -= 1
    else:
        luckBalance -= data[0]

print (luckBalance)


# if k == 0:
#     for data in contest:
#         luckBalance -= data[0]
#     print (luckBalance)

# else:
#     importantContest = [data for data in contest if data[1] == 1]
#     importantContest.sort(key = lambda x: x[0])

#     winContest = importantContest[-k:]
#     lossContest = importantContest[:len(importantContest)-k]
#     notImportantContest = [data for data in contest if data[1] == 0]

#     for data in winContest:
#         luckBalance += data[0]

#     for data in lossContest:
#         luckBalance -= data[0]

#     for data in notImportantContest:
#         luckBalance += data[0]

#     print (luckBalance)

