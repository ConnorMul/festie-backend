class PostSerializer < ActiveModel::Serializer
  attributes :id, :image, :caption, :user, :festival
  has_one :festival
  has_one :user
end
