class RemoveIndexFromAnimals < ActiveRecord::Migration[5.2]
  def change
    remove_index :animals, :breed_id
    remove_foreign_key :animals, :breeds
    drop_table :breeds
  end
end
