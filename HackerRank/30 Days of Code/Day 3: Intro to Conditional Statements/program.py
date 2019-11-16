data = int(input())

if data%2 != 0:
    print("Weird")
else:
    if data > 20:
        print ("Not Weird")
    elif data in range(2,6):
        print ("Not Weird")
    elif data in range(6,21):
        print("Weird")