#explisit

def calc(a,b,&block)
    block.call(a,b)
end

puts( calc(5,6) {|a,b| a+b} )

def calc2(a,b)
    yield(a,b)
end

myblock = lambda {|a,b| a+b }
puts( calc(5,6,&myblock) )

def arrayf(array, &block)
    array.select(&block)
end

puts(arrayf([1,2,3,4]) {|number| number.even?()})

def arrayf2(array, block)
  array.select(&block)
end

puts(arrayf2([1,2,3,4], lambda{|number| number.even?}))

my_lambda = lambda do | array, block |
    array.select(&block)
end

puts(my_lambda.call([1,2,3,4],lambda{|num| num.odd?}))

my_lambda = lambda do | array, &block |
    array.select(&block)
end

puts(my_lambda.call([1,2,3,4]) {|num| num.odd?})