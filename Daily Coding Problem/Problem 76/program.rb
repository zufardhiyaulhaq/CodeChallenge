arr = []
file = File.new("input3.in","r")
file.readlines().each() do |line|
    arr.push(line.chomp().split(""))
end

def lexi_check(arr)
    new_arr = []
    arr_length = arr.length()

    if arr_length == 1
        return(0)
    end

    line_length = arr[0].length()

    Array(0...line_length).each() do |i|
        tmp_arr = []
        Array(0...arr_length).each() do |j|
            tmp_arr.push(arr[j][i])
        end
        new_arr.push(tmp_arr)
    end

    count = 0
    new_arr.each() do |i|
        Array(0...line_length-1).each() do |j|
            if i[j] > i[j+1]
                count += 1
                break
            end
        end
    end

    return count
end

p(lexi_check(arr))


        

        


