class FestivalSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :city, :dates, :average_star_rating
  has_many :favorites
  has_many :reviews
  has_many :posts
end
