class Game < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :memberships
end
