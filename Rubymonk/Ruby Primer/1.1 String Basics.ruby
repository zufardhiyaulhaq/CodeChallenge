# String Interpolation
a = 1
b = 2
puts("the number of #{a} is less than #{b}")

puts("\n")

def check_length(incoming_string)
    puts("the length of string '#{incoming_string}' is #{incoming_string.length()}")
end

my_string = "halooo123 lol123 123test"
check_length(my_string)

puts("\n")
puts(my_string.include?("lol"))
puts(my_string.start_with?("halo"))
puts(my_string.end_with?("test"))
puts(my_string.index("o"))

case_string = "HahahahAHAHAHhahaha"
puts(case_string.upcase())
puts(case_string.downcase())
puts(case_string.swapcase())