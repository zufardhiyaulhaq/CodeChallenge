# frozen_string_literal: true

def find_longest_sequence(hash)
  ans = 0
  hash.keys.each do |num|
    next if hash.key?(num - 1)

    i = num
    i += 1 while hash.key?(i)
    ans = i - num if i - num > ans
  end
  ans
end

hash = Hash.new { |h, k| h[k] = nil }
gets.split(' ').map(&:to_i).each do |num|
  hash[num]
end

p find_longest_sequence(hash)
