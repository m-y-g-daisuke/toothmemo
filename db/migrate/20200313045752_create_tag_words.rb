class CreateTagWords < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_words do |t|
      t.string :word, null: false, unique: true
      t.timestamps
    end
  end
end
