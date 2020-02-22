class Coordinate
  attr_reader :x_axis, :y_axis

  def initialize(x_axis, y_axis)
    if x_axis.class != Integer || y_axis.class != Integer
      raise ArgumentError, 'Err: Coordinate must be Integer'
    end

    if x_axis.negative? || y_axis.negative?
      raise ArgumentError, 'Err: Coordinate must be positive Integer'
    end

    @x_axis = x_axis
    @y_axis = y_axis
  end
end
