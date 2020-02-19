# frozen_string_literal: true

class User < ApplicationRecord
  serialize :ship
  serialize :missile
end
