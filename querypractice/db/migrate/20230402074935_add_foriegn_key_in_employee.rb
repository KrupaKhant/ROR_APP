class AddForiegnKeyInEmployee < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :employees, :roles
  end
end
