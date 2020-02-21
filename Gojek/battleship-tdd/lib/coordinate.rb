class Coordinate
  attr_reader :x, :y

  def initialize(x, y)
    if x.class != Integer || y.class != Integer
      raise ArgumentError, 'Err: Coordinate must be Integer'
    end

    if x.negative? || y.negative?
      raise ArgumentError, 'Err: Coordinate must be positive Integer'
    end

    @x = x
    @y = y
  end
end
