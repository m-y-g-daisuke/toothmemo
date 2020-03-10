class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
    t.string :name, null: false
    t.date :birth, default: ""
    t.integer :sex, default: ""
    t.references :user, null:false, foreign_key: true

    t.timestamps
    end
  end
end
