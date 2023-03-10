class ItemModifier < ApplicationRecord
  belongs_to :item_id
  belongs_to :modifier_id
end
