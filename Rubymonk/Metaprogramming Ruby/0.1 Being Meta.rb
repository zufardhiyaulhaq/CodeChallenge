# frozen_string_literal: true

class String
  def words
    split(' ')
  end
end

a = 'haha hihi huhu'
p a.words
