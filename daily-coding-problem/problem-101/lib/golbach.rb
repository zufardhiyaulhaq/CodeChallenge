# frozen_string_literal: true

def is_prime?(num)
  limit = num/2
  (2..limit).each do |divisor|
    return false if num % divisor == 0
  end
  true
end

def get_primes(num)
  limit = (num/2)+1
  (2..limit).each do |a|
    next unless is_prime?(a)
    return [a, num-a] if is_prime?(num-a)
  end
end