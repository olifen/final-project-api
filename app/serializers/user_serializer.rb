class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :first_name, :last_name, :location, :lat, :lng, :image, :phone_number
end
