class RenameTemplateColumnToTemplates < ActiveRecord::Migration[5.2]
  def change
    rename_column :templates, :template, :content
  end
end
