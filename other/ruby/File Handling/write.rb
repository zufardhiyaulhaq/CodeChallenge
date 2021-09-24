#read file1
array = []
File.foreach("file4.txt") {|line| array.push(line.split(" ").map(){|string| string.to_i()})}

# with space
file = File.open("file4-write.txt","w")
array.each() do |line|
    file.puts(line.join(" "))
end
file.close()

# with space
file = File.open("file4-write-nospace.txt","w")
array.each() do |line|
    file.write(line.join(" "))
end
file.close()
