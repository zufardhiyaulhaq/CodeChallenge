class Map
  attr_reader :map

  def initialize(grid)
    if grid.class != Integer
      raise ArgumentError, 'Err: argument should be integer'
    end

    if grid.negative? || grid.eql?(0)
      raise ArgumentError, 'Err: argument should be positive integer'
    end

    create(grid)
  end

  def create(grid)
    @map = Array.new(grid) { Array.new(grid, '_') }
  end
end
