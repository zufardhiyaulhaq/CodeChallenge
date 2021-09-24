max_rand = gets().to_i()
arr_exception = gets().split().map{|s| s.to_i()}
arr_rand = Array(0...max_rand)

arr_rand = arr_rand - arr_exception
arr_length = arr_rand.length()

p(arr_rand[rand(arr_length)])
