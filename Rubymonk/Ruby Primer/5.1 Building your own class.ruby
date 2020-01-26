class Rectangle
    def initialize(length, breadth)
        @length = length
        @breadth = breadth
    end
    def perimeter()
        2 * (@length + @breadth)
    end
    def area()
        @length*@breadth
    end
end

data = Rectangle.new(10,10)
p(data.perimeter())
p(data.area())
