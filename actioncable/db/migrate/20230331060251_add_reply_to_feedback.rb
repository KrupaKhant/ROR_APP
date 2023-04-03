class AddReplyToFeedback < ActiveRecord::Migration[7.0]
  def change
    add_column :feedbacks, :reply, :string
  end
end
