class Festival < ApplicationRecord
 has_many :favorites
 has_many :reviews
 has_many :users, through: :comments

    def average_star_rating
        if self.reviews.length > 0
            self.reviews.map{ |review| review.stars }.sum / self.reviews.count
        else
            return 0
        end
    end

end
