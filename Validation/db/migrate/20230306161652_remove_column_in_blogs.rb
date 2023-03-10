class RemoveColumnInBlogs < ActiveRecord::Migration[7.0]
  def change
    remove_column :blogs, :comments, :string
  end
end
