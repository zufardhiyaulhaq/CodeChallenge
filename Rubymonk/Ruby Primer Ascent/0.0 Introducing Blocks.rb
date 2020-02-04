# block with lambda
addition = lambda {|a, b| return a + b }
puts addition.call(5, 6)

# is lambda is object?
empty_block = lambda { }
puts empty_block.object_id
puts empty_block.class
puts empty_block.class.superclass

# change class method to block
class Calculator
    def add(a, b)
      return a + b
    end
end
  
puts Calculator.new.add(5, 6)

#
addition_method = Calculator.new.method("add")
addition =  addition_method.to_proc

puts addition.call(5, 6)


# tasksS
Addition = lambda {|a, b| return a + b } # use this as your example!

Subtraction = lambda { |a,  b| return a - b } # your code between the braces

Multiplication = lambda { |a,  b| return a * b } # your code between the braces

Division = lambda { |a,  b| return a / b } # your code between the braces

