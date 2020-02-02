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

class Car
    @make
    @@wheels = 4

    def initialize(make)
        @make = make
    end

    def self.wheels
        @@wheels
    end
    attr_accessor :make
end

civic = Car.new("Honda")
p civic.make
p Car.wheels
