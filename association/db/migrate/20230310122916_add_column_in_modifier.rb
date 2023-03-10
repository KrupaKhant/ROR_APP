class AddColumnInModifier < ActiveRecord::Migration[7.0]
  def change
    add_column :modifiers, :status, :boolean
  end
end
