# frozen_string_literal: true

class Monk
  %w[life the_universe everything].each do |action|
    define_method("meditate_on_#{action}") do
      "I know the meaning of #{action.gsub('_', ' ')}"
    end
  end
end

a = Monk.new
p a.meditate_on_life
p a.meditate_on_the_universe
p a.meditate_on_everything