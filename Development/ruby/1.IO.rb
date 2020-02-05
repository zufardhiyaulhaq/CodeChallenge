# Output #
# this is print, no newline
print("no new line")
print("new line\n")

# this is puts, default have newline
puts("test puts 1")
puts("test puts 2\n\n")

# using global variable, not shortcut
$stdout.print("test glob 1")
$stdout.puts("test glob 2")

# another is `p`, `printf`, and `putc`
array = [1,2,3]
puts(array)
p(array)

# putc per character
putc("t")
putc("lol")
putc(0xA)

# printf
printf("saya suka %s %s%", "dina", 100)
printf("\n")

# all of them is using kernel method and shortcut, more formal way
# and more hard is using

ios = IO.new(STDOUT.fileno)
ios.write("test")
ios.write("2 \n")
ios.close()

# we can use TTY as well
fd = IO.sysopen("/dev/tty", "w")
ios = IO.new(fd, "w")
ios.puts("test from tty")
ios.puts([1,2,3])
ios.close()

# Input #
# stop with ctrl+d
# inp = $stdin.read()
# puts(inp)

# using gets
print("enter name: ")
name = $stdin.gets()
puts("your name is #{name}")
puts("you name have #{name.size} character (add by 1 because count new line)")

print("enter name: ")
name = $stdin.gets().chomp()
puts("you name have #{name.size} character (add by 1 because count new line)")

# write from file
f = File.open('output.txt', "w")
print("enter some words: ")
f.puts(gets().chomp())
f.close()

# write to file 2
File.open('langs', 'w') do |f|
    f.write("java \n")
    f.puts("ruby")
    f <<  "python\n"
end

# read file
File.open('langs', 'r') do |f|
    f.readlines().each() do |line|
        puts(line)
    end
end

# read easy?
f = File.open('langs', 'r')
f.readlines().each() do |line|
    puts(line)
end

# check file exist?
puts(File.exist? 'langs')

$stderr.puts("test")






