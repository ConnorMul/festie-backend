class Festival < ApplicationRecord
 has_many :favorites
 has_many :reviews
 has_many :users, through: :comments
end
