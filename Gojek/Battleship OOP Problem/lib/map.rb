class Map
  attr_reader :map

  def initialize(grid)
    create(grid)
  end

  private

  def create(grid)
    raise "Error: Grid wrong type, must be integer, given #{grid.class}" unless grid.instance_of?(Integer)
    raise "Error: Grid must not be negative, given #{grid}" if grid.negative?

    @map = Array.new(grid) { Array.new(grid, '_') }
  end
end
