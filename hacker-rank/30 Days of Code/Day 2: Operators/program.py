cost = float(input())
tip = cost*int(input())/100
tax = cost*int(input())/100

print(round(cost+tip+tax))