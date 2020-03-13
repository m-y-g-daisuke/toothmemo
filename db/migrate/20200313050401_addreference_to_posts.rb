class AddreferenceToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :tag_word, foreign_key: true
  end
end
