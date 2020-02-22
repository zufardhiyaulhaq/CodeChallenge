class Map
  attr_reader :map

  def initialize(grid)
    if grid.class != Integer
      raise ArgumentError, 'Err: argument should be integer'
    end

    if grid.negative? || grid.eql?(0)
      raise ArgumentError, 'Err: argument should be positive integer'
    end

    @map = Array.new(grid) {Array.new(grid, '_')}
    @grid = grid
  end

  def change(coordinate, value)
    if coordinate.class != Coordinate
      raise ArgumentError, 'Err first argument should be Coordinate'
    end

    if coordinate.x_axis >= @grid || coordinate.y_axis >= @grid
      raise RangeError, 'Err coordinate outsite map area'
    end

    @map[coordinate.x_axis][coordinate.y_axis] = value
  end

  def get(coordinate)
    if coordinate.class != Coordinate
      raise ArgumentError, 'Err first argument should be Coordinate'
    end

    if coordinate.x_axis >= @grid || coordinate.y_axis >= @grid
      raise RangeError, 'Err coordinate outsite map area'
    end

    @map[coordinate.x_axis][coordinate.y_axis]
  end

  def count(value)
    @map.flatten.count(value)
  end
end
