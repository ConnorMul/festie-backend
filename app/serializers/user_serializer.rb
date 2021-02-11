class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :avatar
  has_many :reviews
  has_many :favorites
  has_many :posts
end
