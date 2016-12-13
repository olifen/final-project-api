class VenueSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :games, :google_place_id, :lat, :lng, :postcode
end
