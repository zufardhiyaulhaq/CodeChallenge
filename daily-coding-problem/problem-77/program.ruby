require 'set'

data_count = gets().to_i() - 1
data = []

for _ in 0..data_count do
    tmp = gets.split(" ").map{|c| c.to_i()}
    data.push(Set.new(tmp[0]..tmp[1]))
end

p(data)