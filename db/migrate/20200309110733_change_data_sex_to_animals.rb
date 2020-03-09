class ChangeDataSexToAnimals < ActiveRecord::Migration[5.2]
  def change
    change_column :animals, :sex, :string
  end
end
