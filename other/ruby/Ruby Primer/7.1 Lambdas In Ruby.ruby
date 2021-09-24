lamb = lambda{"haha hihui"}
p(lamb.call)

l = lambda do |mystring|
    mystring == "wow" ? "lol" : "naaaa"
end

puts(l.call("wow"))
puts(l.call("asdsa"))

Incre = lambda { |myint| myint.next }
puts(Incre.call(2))