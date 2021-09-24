def check_array()
    array = gets().split(" ").map{ |value| value.to_i()}

    count = 0
    length = array.length()-2

    for index in 0..length do
        if array[index] > array[index+1]
            
            count += 1

            if count > 1
                return false
            end

        end
    end

    return true
end

puts(check_array())
