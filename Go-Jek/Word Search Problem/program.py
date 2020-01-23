yMovement = [-1, -1, 0, 1, -1, 0, 1, 1]
xMovement = [-1, 0, -1, -1, 1, 1, 0, 1]


def search(yLen, xLen, wordArray, wordMatch):
    count = 0

    # looping all array
    for y in range(yLen):
        for x in range(xLen):

            # if first array not match, dont call the wordMatch function
            if wordArray[y][x] == wordMatch[0]:

                # if second and third word match, return integer 1 and append into count
                count += match(x, y, wordArray, wordMatch, xLen, yLen)

    return count


def match(x, y, wordArray, wordMatch, xLen, yLen):
    count = 0

    for direction in range(8):

        # get the next coordinate
        yNext, xNext = y+yMovement[direction], x+xMovement[direction]

        progress = 1

        while progress < len(wordMatch):
            if yNext < 0 or xNext < 0 or yNext >= yLen or xNext >= xLen:
                break

            if wordArray[yNext][xNext] != wordMatch[progress]:
                break

            yNext += yMovement[direction]
            xNext += xMovement[direction]
            progress += 1

        if progress == len(wordMatch):
            count += 1

    return count


for case in range(int(input())):
    yLen, xLen = int(input()), int(input())
    wordArray = [input() for _ in range(yLen)]
    wordMatch = input()
    countMatch = search(yLen, xLen, wordArray, wordMatch)
    print("Case "+str(case+1)+": "+str(countMatch))
