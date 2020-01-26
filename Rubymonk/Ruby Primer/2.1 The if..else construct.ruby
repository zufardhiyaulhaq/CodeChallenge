number = gets.to_i

def checknumber(number)
    if number > 0
        puts("#{number} is positive")
    elsif number == 0
        puts("#{number}")
    else
        puts("#{number} is negative")
    end
end

def checkage(number)
    unless number >= 18
        puts("your age need to be at least 18")
    end
end

def checknumber2(number)
    data = number > 0 ? "#{number} positive" : "#{number} negative"
    puts(data)
end

checknumber(number)
checkage(number)
checknumber2(number)

if 0
    puts("true")  
end