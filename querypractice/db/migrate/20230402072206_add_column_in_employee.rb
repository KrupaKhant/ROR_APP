class AddColumnInEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :salary, :float 
  end
end
