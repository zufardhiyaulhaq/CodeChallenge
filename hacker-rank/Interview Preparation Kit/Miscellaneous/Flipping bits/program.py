
def flippingBits(decimalNumber):
    defaultString = '0'*32

    binNumber = str(bin(decimalNumber))[2:]
    binNumber = defaultString[:32-len(binNumber)]+binNumber
    newNumber = []
    for i in range(32):
        if binNumber[i] == "0":
            newNumber.append("1")
        elif binNumber[i] == "1":
            newNumber.append("0")


    return int(''.join(newNumber),2)


n = int(input())
decimalList = [int(input()) for _ in range(n)]

for i in range(n):
    print(flippingBits(decimalList[i]))

