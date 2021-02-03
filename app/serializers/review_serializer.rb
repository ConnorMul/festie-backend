class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :stars, :user_id, :festival_id
  # has_one :user
  # has_one :festival
end
