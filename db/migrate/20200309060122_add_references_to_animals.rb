class AddReferencesToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_reference :animals, :breed, null: false, foreign_key: true

  end
end
