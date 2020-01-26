# map method
data = [1,2,3,4,5]

def tambah(a)
    a+a
end

puts(data.map{|a| a+a})
puts(data.map{|a| tambah(a)})

# select method
puts(data.select{|a| a%2 == 0})

names = ['rock', 'paper', 'scissors', 'lizard', 'spock']
puts(names.select{|a| a.length() > 5})

# delete method
puts("\n")
names.delete("rock")
puts(names)

# delete if
puts(data.delete_if{|a| a%2 == 0})
puts(data.delete_if{|a| a < 4})

