class User < ApplicationRecord
    has_many :reviews
    has_many :posts
    has_many :favorites
end
