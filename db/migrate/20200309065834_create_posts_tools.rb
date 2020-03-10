class CreatePostsTools < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_tools do |t|
      t.references :post, null: false, foreign_key: true
      t.references :tool, null: false, foreign_key: true      
      t.timestamps
    end
  end
end
