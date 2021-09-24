my_list = "saya makan nasi dengan ayah"
data = my_list.split()
puts(data)
puts("\n")

#concat
a = "string"
b = " is"
c = " awesome awesome"
a.concat(b).concat(c)
puts(a)

#replace
b = "I should look into your problem when I get time"
c = b.clone
b.sub!('I','We')
puts(b)

c.gsub!('I','We')
puts(c)

puts("you are only my love you".sub!('you','we'))
puts("you are only my love you".gsub!('you','we'))

#regex sub & gsub
data = 'RubyMonk Is Pretty Brilliant'
data2 = data.clone()
puts(data.gsub!(/[A-Z]/,'0'))
puts(data)

# Find a substring using RegEx
puts(data2.match(/.$/)) 
puts(data2.match(/^./))

# match at char 0
puts(data2.match(/ ./,0))

# match at char 9
puts(data2.match(/ ./,9))

# match at char 9
puts(data2.match(/ ./,12))

# match a word
puts(data2.match(/[\S]+/))


