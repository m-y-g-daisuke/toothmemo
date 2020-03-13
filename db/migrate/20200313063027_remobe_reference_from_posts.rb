class RemobeReferenceFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_index :posts,:tool_id
    remove_foreign_key :posts, :tools
    remove_column :posts, :tool_id, :bigint
    remove_index :posts, :tag_word_id
    remove_foreign_key :posts, :tag_words
    remove_column :posts, :tag_word_id, :bigint
  end
end
