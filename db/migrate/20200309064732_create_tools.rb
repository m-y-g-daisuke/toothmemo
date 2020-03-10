class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :tool, null: false, unique: true
      t.timestamps
    end
  end
end
