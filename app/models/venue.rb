class Venue < ApplicationRecord
  has_many :games, dependent: :destroy
end
