row = gets().to_i()-1
column = gets().to_i()-1
map = []
$tmp_coordinate = []

for _ in 0..row do
    map.push(gets().split())    
end

def find_islands(map, row, column)
    island = []

    for i in 0..row do
        for j in 0..column do

            if map[i][j] != '1'
                next
            end

            if $tmp_coordinate.include?([i,j]) 
                next
            end

            $island_coordiate = []
            find_area(map, i, j, row, column)
            island.push($island_coordiate)

        end
    end

    p(island)
    return island.length()
end

def find_area(map, i, j, row, column)

    if map[i][j] == '1'
        $island_coordiate.push([i,j])
        $tmp_coordinate.push([i,j]) 
    end

    if i-1 >= 0 && map[i-1][j] == '1'
        unless $tmp_coordinate.include?([i-1,j])
            find_area(map, i-1, j, row, column)
        end
    end

    if i+1 <= row && map[i+1][j] == '1'
        unless $tmp_coordinate.include?([i+1,j])
            find_area(map, i+1, j, row, column)
        end
    end

    if j-1 >= 0 && map[i][j-1] == '1'
        unless $tmp_coordinate.include?([i,j-1])
            find_area(map, i, j-1, row, column)
        end
    end

    if j+1 <= column && map[i][j+1] == '1'
        unless $tmp_coordinate.include?([i,j+1])
            find_area(map, i, j+1, row, column) 
        end   
    end

end

puts(find_islands(map, row, column))