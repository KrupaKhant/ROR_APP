class RenameColumnInBlogs < ActiveRecord::Migration[7.0]
  def change
    rename_column :blogs, :content, :body
  end
end
