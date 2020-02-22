class Player
  attr_reader :name
  attr_reader :map

  def initialize(name, map)
    if name.class != String || map.class != Map
      raise ArgumentError, 'Err: argument should be String & Map'
    end

    @name = name
    @map = map
    @missile = []
  end

  def add_ship(ship)
    if ship.class != Coordinate
      raise ArgumentError, 'Err: argument should be Coordinate'
    end

    # :nocov:
    @player_map.map[ship.x_axis][ship.y_axis] = 'S'
    # :nocov:
  end

  def add_missile(missile)
    if missile.class != Coordinate
      raise ArgumentError, 'Err: argument should be Coordinate'
    end

    @missile.push(missile)
  end

  # :nocov:
  def attack(enemy)
    @enemy = enemy
  end
  # :nocov:
end
