# frozen_string_literal: true

def calc_distance(array)
  return 0 if array.empty?
  return 0 if array.length == 1

  first_point = array[0]
  last_point = array[-1]

  if last_point[0] - first_point[0] >= last_point[-1] - first_point[-1]
    last_point[0] - first_point[0]
  else
    last_point[-1] - first_point[-1]
  end
end
