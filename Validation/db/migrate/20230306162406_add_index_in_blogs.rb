class AddIndexInBlogs < ActiveRecord::Migration[7.0]
  def change
    add_index :blogs, :blog_id
  end
end
