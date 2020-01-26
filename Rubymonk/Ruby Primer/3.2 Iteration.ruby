# for loop
array = [1,2,3,4,5]
for i in array
    puts(i)
end

# each loop
array.each do |i|
    puts(i)
end

new_array = []
array.each do |i|
    new_array.append(i) if i<4
end
puts(new_array)


