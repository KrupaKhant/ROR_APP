class Modifier < ApplicationRecord
    has_many :item_modifiers, dependent: :destroy
    has_many :items, through: :item_modifiers, dependent: :destroy
    has_one :rating, as: :ratable
  
    default_scope { order(name: :desc) }
end
