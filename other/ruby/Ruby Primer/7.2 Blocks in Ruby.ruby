def thisisblock(number)
    yield(number)
end

puts(thisisblock(1) {|number| number+1})

def calculate(a, b)
    yield(a, b)
  end

puts(calculate(1,2){ |a,b| a+b})
puts(calculate(2,3){ |a,b| a*b})
puts(calculate(2,3){ |a,b| a/b})