class GameSerializer < ActiveModel::Serializer
  attributes :id, :no_of_places, :start_time, :end_time, :date, :name, :price
  has_one :user
  has_one :venue
  has_many :memberships
end
