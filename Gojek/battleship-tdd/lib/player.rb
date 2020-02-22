class Player
  attr_reader :name
  attr_reader :player_map

  def initialize(name, map)
    if name.class != String || map.class != Map
      raise ArgumentError, 'Err: argument should be String & Map'
    end

    @name = name
    @player_map = map
    @missile = []
  end

  def add_ship(coordinate)
    if coordinate.class != Coordinate
      raise ArgumentError, 'Err: argument should be Coordinate'
    end

    # :nocov:
    @player_map.change(coordinate, 'B')
    # :nocov:
  end

  def add_missile(coordinate)
    if coordinate.class != Coordinate
      raise ArgumentError, 'Err: argument should be Coordinate'
    end

    @missile.push(coordinate)
  end

  # :nocov:
  def attack(enemy)
    if enemy.class != Player
      raise ArgumentError, 'Err: argument should be Player'
    end

    @missile.each do |coordinate|
      if enemy.player_map.get(coordinate) == 'B'
        enemy.player_map.change(coordinate, 'X')
      else
        enemy.player_map.change(coordinate, 'O')
      end
    end
  end
  # :nocov:

  def count_ship
    @player_map.count('B')
  end
end
