# frozen_string_literal: true

class TimeMap
  def initialize
    @hash = Hash.new { |h, k| h[k] = [] }
  end

  def set(key, value, time)
    @hash[key][time] = value
  end

  def get(key, time)
    return '' if @hash[key].nil?
    return @hash[key][time] unless @hash[key][time].nil?

    time.downto(0) do |n|
      return @hash[key][n] unless @hash[key][n].nil?
    end

    return nil
  end
end

d = TimeMap.new
# d.set(1, 1, 0) # set key 1 to value 1 at time 0
# d.set(1, 2, 2) # set key 1 to value 2 at time 2
# p d.get(1, 1) # get key 1 at time 1 should be 1
# p d.get(1, 3) # get key 1 at time 3 should be 2

# d.set(1, 1, 5) # set key 1 to value 1 at time 5
# p d.get(1, 0) # get key 1 at time 0 should be null
# p d.get(1, 10) # get key 1 at time 10 should be 1

# d.set(1, 1, 0) # set key 1 to value 1 at time 0
# d.set(1, 2, 0) # set key 1 to value 2 at time 0
# p d.get(1, 0) # get key 1 at time 0 should be 2