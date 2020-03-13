class AddMemoT0Posts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :memo, :text
    add_column :posts, :content_b, :text
  end
end
