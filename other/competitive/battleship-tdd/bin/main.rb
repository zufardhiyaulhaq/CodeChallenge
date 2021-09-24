require_relative '../lib/map'
require_relative '../lib/player'
require_relative '../lib/coordinate'

def main
  player1_map = Map.new(5)
  player2_map = Map.new(5)

  player1 = Player.new('zufar', player1_map)
  player2 = Player.new('aulia', player2_map)

  input = readlines

  read_coordinates(input[2]).each do |coordinate|
    player1.add_ship(coordinate)
  end

  read_coordinates(input[3]).each do |coordinate|
    player2.add_ship(coordinate)
  end

  read_coordinates(input[5]).each do |coordinate|
    player1.add_missile(coordinate)
  end

  read_coordinates(input[6]).each do |coordinate|
    player2.add_missile(coordinate)
  end

  player1.attack(player2)
  player2.attack(player1)

  if player1.count_ship > player2.count_ship
    p "Player #{player1.name} wins"
  elsif player1.count_ship < player2.count_ship
    p "Player #{player2.name} wins"
  else
    p 'It is a draw'
  end
end

def read_coordinates(line)
  coordinates = []
  line.split(':').map {|item| item.split(',')}.each do |item|
    coordinates.push(Coordinate.new(item[0].to_i, item[1].to_i))
  end
  coordinates
end

if __FILE__ == $PROGRAM_NAME
  main
end
