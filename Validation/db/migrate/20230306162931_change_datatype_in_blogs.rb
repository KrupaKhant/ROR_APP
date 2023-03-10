class ChangeDatatypeInBlogs < ActiveRecord::Migration[7.0]
  def change
    change_column :blogs, :title , :text
  end
end
