class Rating < ApplicationRecord
  belongs_to :ratable, polymorphic: true

  default_scope { order(rating: :desc) }
end
