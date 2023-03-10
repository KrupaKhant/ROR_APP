class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :username
      t.string :password
      t.integer :phonenumber
      t.integer :zipcode
      t.date :planstartdate
      t.date :planenddate
      t.integer :totaldaysofplan

      t.timestamps
    end
  end
end
