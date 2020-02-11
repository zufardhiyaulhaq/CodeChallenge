file = File.open("file1.txt")
data = file.read().split(" ")
data_int = data.map() {|string| string.to_i}
p(data)
p(data_int)
file.close()

file = File.open("file1.txt")
p(file.read())
file.close()

file2 = File.open("file2.txt")
data = file2.readlines()
data2 = data.map(){|string| string.chomp()}
data3 = data.map(&:chomp)
p(data)
p(data2)
p(data3)
file2.close()

file3 = File.open("file3.txt")
data = file3.readlines().map(&:chomp)
data2 = []
data.each() do |line|
    data2.push(line.split(" "))
end
p(data)
p(data2)
data3 = []
File.foreach("file3.txt") {|line| data3.push(line.chomp().split(" "))}
p(data3)