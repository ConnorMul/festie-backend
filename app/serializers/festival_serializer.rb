class FestivalSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :city, :dates
  has_many :favorites
  has_many :reviews
end
