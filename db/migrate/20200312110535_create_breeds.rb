class CreateBreeds < ActiveRecord::Migration[5.2]
  def change
    create_table :breeds do |t|
      t.string :family, null: false, unique: true
      t.timestamps
    end
  end
end
