# loop do 
#     puts "this line will be executed for an infinite amount of time" 
#  end

# loop do
#     monk.meditate
#     unless false == monk.nirvana?
#       break
#     end
#   end

# loop do
#     monk.meditate
#     break if monk.nirvana?
#   end

# loop do
#     monk.meditate
#     if monk.nirvana?
#       break 
#     end
#   end

# looping 5 times
# 5.times do
#     puts("hahaha")
#   end

data = gets.to_i
data.times do
    puts("looping #{data} times")
end

# add a loop inside this method to ring the bell 'n' times
# def ring(bell, n)
#     n.times do
#       bell.ring
#     end
#   end   