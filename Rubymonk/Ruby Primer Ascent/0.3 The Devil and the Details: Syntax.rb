addition = lambda { |a,b| a+b }
puts (addition.call(5,6))

addition = lambda { |a,b|
  a+b
}
puts(addition.call(6,8))

addition = lambda do |a,b|
    a+b
end
puts(addition.call(6,8))

addition = lambda do |a,b| a+b end
puts(addition.call(6,8))
