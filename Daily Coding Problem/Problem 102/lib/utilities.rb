# frozen_string_literal: true

# competitive utilities module
module Utilities
  def self.subarray_sum(array, target)

    sum = 0
    start = 0
    finish = 0

    i = 0
    while i <= array.length()
      if sum == target
        return array[start, finish]
      elsif sum > target
        sum -= array[start]
        start += 1
        finish -= 1
      else
        sum += array[i]
        finish += 1
        i += 1
      end
    end
  end
end
