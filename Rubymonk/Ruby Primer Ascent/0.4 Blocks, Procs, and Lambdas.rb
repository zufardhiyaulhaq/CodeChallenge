# lambda is return value, when we call lambda, its return the value
def a_method()
    lambda { return "we return from lambda" }.call
    return "we return from method"
end

puts(a_method())
# this will return a_method return because lambda is only string.

def b_method()
    Proc.new { return "we return from proc" }.call
    return "return from method"
end
puts(b_method())

# short lambda
mylambda = ->(a,b) {a-b}
puts(mylambda.call(10,2))

# long lambda? lol
mylambda2 = lambda { |a,b| a-b }
puts(mylambda2.call(10,2))

# short proc
myproc = proc { |a,b| a*b }
puts(myproc.call(3,4))

# long proc
myproc2 = Proc.new {|a,b| a*b}
puts(myproc2.call(3,4))


