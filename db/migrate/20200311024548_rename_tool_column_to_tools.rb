class RenameToolColumnToTools < ActiveRecord::Migration[5.2]
  def change
    rename_column :tools, :tool, :care
  end
end
