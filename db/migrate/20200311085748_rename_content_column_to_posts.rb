class RenameContentColumnToPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :content, :content_g
  end
end
