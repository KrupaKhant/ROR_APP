class Feedback < ApplicationRecord
  belongs_to :user
  validates :rating, inclusion: { in: 1..5 }
end
