class Category < ApplicationRecord
     has_many :items, dependent: :destroy
     has_one :rating, as: :ratable

     scope :active, -> { where(status: true) }
     scope :inactive, -> { where(status: false) }
     scope :good_rating, -> { joins(:rating).where('ratings.rating >= 4') }
     scope :average_rating, -> { joins(:rating).where('ratings.rating < 4') }
   
     default_scope { order(name: :asc) }
end
