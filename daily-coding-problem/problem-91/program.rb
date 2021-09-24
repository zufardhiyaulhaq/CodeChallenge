array = []
for number in (0...10) do
    array.push(lambda {puts(number)})
end

number = 0
for l in array do
    l.call()
    number += 1 
end