class Item < ApplicationRecord
  belongs_to :category

  has_many :item_modifiers, dependent: :destroy
  has_many :modifiers, through: :item_modifiers, dependent: :destroy
  has_one :rating, as: :ratable

  scope :active, -> { where(status: true) }
  scope :inactive, -> { where(status: false) }
  scope :good_rating, -> { joins(:rating).where('ratings.rating >= 4') }
  scope :average_rating, -> { joins(:rating).where('ratings.rating < 4') }
  default_scope { order(name: :asc) }
end
