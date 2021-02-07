class PostSerializer < ActiveModel::Serializer
  attributes :id, :image, :caption, :user_id, :festival_id
  has_one :festival
  has_one :user
end
