string_parentheses = gets()

def compute_parentheses(string_data)
    if string_data.nil?
        return 0
    end

    if string_data.length() == 1
        return 1
    end

    index = 0
    valid_count = 0
    length = string_data.length()

    while index <= length-2
        if string_data[index] == '(' && string_data[index+1] == ')'
            valid_count += 2
            index += 2
            next
        end
        index += 1
    end

    return length-valid_count
end

count = compute_parentheses(string_parentheses)
puts(count)