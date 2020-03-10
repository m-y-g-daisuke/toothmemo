class AddImageToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :Image, :text
  end
end
