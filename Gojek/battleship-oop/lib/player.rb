require_relative 'coordinate.rb'

class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @ship = []
    @missile = []
  end

  def add_ship(ship)
    raise "Error: Ship wrong type, must be Coordinate, given #{ship.class}" unless ship.instance_of?(Coordinate)

    @ship.push(ship)
  end

  def add_missile(missile)
    raise "Error: Missile wrong type, must be Coordinate, given #{missile.class}" unless missile.instance_of?(Coordinate)

    @missile.push(missile)
  end

  def add_map(map)
    raise "Error: Map wrong type, must be Map, given #{map.class}" unless map.instance_of?(Map)

    @player_map = map
  end

  def populate_map
    @ship.each do |coordinate|
      @player_map.map[coordinate.x][coordinate.y] = @name
    end
  end

  def launch_missile
    @missile.each do |coordinate|
      if @player_map.map[coordinate.x][coordinate.y] != '_'
        @player_map.map[coordinate.x][coordinate.y] = 'X'
      else
        @player_map.map[coordinate.x][coordinate.y] = 'O'
      end
    end
  end

  def count_ship
    flatten_map = @player_map.map.flatten
    @ship_number = flatten_map.count(@name)
  end
end
