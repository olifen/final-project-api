class MembershipSerializer < ActiveModel::Serializer
  attributes :id, :user, :game
  belongs_to :user
  belongs_to :game
end
