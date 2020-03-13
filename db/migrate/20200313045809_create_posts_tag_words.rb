class CreatePostsTagWords < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_tag_words do |t|
      t.references :post, null: false, foreign_key: true
      t.references :tag_word, null: false, foreign_key: true
      t.timestamps
    end
  end
end
