class CreatePostsTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_templates do |t|
      t.references :post, null: false, foreign_key: true
      t.references :template, null: false, foreign_key: true      
      t.timestamps
    end
  end
end
