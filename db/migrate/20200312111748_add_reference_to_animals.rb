class AddReferenceToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_reference :animals, :breed, foreign_key: true
  end
end
