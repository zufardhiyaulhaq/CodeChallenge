

def create_map(grid_size):
    return [['_' for j in range(grid_size)]for i in range(grid_size)]

def populate_map(player_map,ship_coordinate):
    for coordinate in ship_coordinate:
        player_map[int(coordinate[0])][int(coordinate[1])] = "B"
    return player_map

def attack_map(attacked_player_map,missile_coordinate):
    for coordinate in missile_coordinate:
        if attacked_player_map[int(coordinate[0])][int(coordinate[1])] == "B":
            attacked_player_map[int(coordinate[0])][int(coordinate[1])] = "X"
        else:
            attacked_player_map[int(coordinate[0])][int(coordinate[1])] = "O"
    return attacked_player_map

def count_ship(map,grid_size) -> int:
    count = 0
    for i in range(grid_size):
        for j in range(grid_size):
            if map[i][j] == "B":
                count += 1
    return count

grid_size = int(input())
total_ship = int(input())

p1 = input().split(":")
p2 = input().split(":")

total_missile = int(input())

p1_missile = input().split(":")
p2_missile = input().split(":")

p1_map = create_map(grid_size)
p2_map = create_map(grid_size)

p1_ship = [data.split(",") for data in p1]
p2_ship = [data.split(",") for data in p2]

p1_missile = [data.split(",") for data in p1_missile]
p2_missile = [data.split(",") for data in p2_missile]

p1_map = populate_map(p1_map,p1_ship)
p2_map = populate_map(p2_map,p2_ship)

p1_map = attack_map(p1_map,p2_missile)
p2_map = attack_map(p2_map,p1_missile)

print ("Player1")
print("\n".join([" ".join(data) for data in p1_map]))

print ("\nPlayer2")
print("\n".join([" ".join(data) for data in p2_map]))

p1_alive = count_ship(p1_map,grid_size)
p2_alive = count_ship(p2_map,grid_size)

print("\nP1:"+str(p1_alive))
print("P2:"+str(p2_alive))

if p1_alive < p2_alive:
    print("Player 2 wins")
elif p1_alive > p2_alive:
    print("Player 1 wins")
else:
    print("It is a draw")

