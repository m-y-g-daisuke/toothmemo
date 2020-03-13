class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.datetime :recorded_at, null: false
      t.text :content
      t.text :image
      t.text :movie
      t.references :animal, null:false, foreign_key: true
      t.references :tool, foreign_key: true
      t.timestamps
    end
  end
end
