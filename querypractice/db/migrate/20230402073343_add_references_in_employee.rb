class AddReferencesInEmployee < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :role, index: true
    
  end
end
