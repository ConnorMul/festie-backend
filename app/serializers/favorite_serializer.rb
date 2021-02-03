class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :festival_id
  has_one :user
  has_one :festival
end
