class AddColumnInBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :content, :string
    add_column :blogs, :title, :string
    add_column :blogs, :comments, :string
  end
end
