# module WarmUp
#     def push_ups
#         puts("lol")
#     end
# end

# class Football
#     include WarmUp
#     def shoot
#         puts("1+1")
#     end
# end

# class Swim
#     include WarmUp
#     def goswim
#         puts("wush")
#     end
# end

# ilovefootball = Football.new()
# puts(ilovefootball.shoot)
# puts(ilovefootball.push_ups)

# iloveswim = Swim.new()
# puts(iloveswim.goswim)
# puts(iloveswim.push_ups)

# puts(WarmUp.class)
# puts(Class.superclass)
# puts(Module.superclass)

module Perimeter
    def perimeter
      sides.inject(0) { |sum, nextint| sum + nextint }
    end
  end
  
  class Rectangle
    include Perimeter
    
    def initialize(length, breadth)
      @length = length
      @breadth = breadth
    end
  
    def sides
      [@length, @breadth, @length, @breadth]
    end
  end
  
  class Square
    include Perimeter
    
    def initialize(side)
      @side = side
    end
  
    def sides
      [@side, @side, @side, @side]
    end
  end

p(Rectangle.new(5, 10).perimeter)
