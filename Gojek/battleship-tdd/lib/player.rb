class Player
  attr_reader :name

  def initialize(name)
    if name.class != String
      raise ArgumentError, 'Err: argument should be String'
    end

    @name = name
    @ship = []
    @missile = []
  end

  def add_map(map)
    if map.class != Map
      raise ArgumentError, 'Err: argument should be Map'
    end

    @map = map
  end

  def add_ship(ship)
    if ship.class != Coordinate
      raise ArgumentError, 'Err: argument should be Coordinate'
    end

    @ship.push(ship)
  end
end
