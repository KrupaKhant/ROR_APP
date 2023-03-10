class RollbackInBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :heading, :text
  end
end
