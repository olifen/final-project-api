class GameSerializer < ActiveModel::Serializer
  attributes :id, :address, :lat, :lng, :no_of_places, :start_time, :end_time, :date
  has_one :user
end
