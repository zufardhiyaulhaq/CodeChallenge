# I have hash
my_hash =  {
    "Jack" => 10,
    "Jill" => 12,
    "Bob" => 14
}
p(my_hash)

# get keys
my_hash.each do | key, _ |
    puts("#{key}")
end

# get values
my_hash.each do | _, value |
    puts("#{value}")
end

# get key value
my_hash.each do | key, value |
    puts("#{key}:#{value}")
end

# using for
for k,v in my_hash
    puts("#{k}:#{v}")
end

# test
restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
restaurant_menu.each do | k,v |
  restaurant_menu[k] = v + v*0.1
end

# extract key in array
p(restaurant_menu.keys())

def artax
    a = [:punch, 0]
    b = [:kick, 72]
    c = [:stops_bullets_with_hands, false]
    key_value_pairs = [a, b, c]
    Hash[key_value_pairs]
  end
p artax()
data = artax()
p(data[":stops_bullets_with_hands"])