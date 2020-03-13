class ChangeTemplatesToCheckRecords < ActiveRecord::Migration[5.2]
  def change
    rename_table :templates, :check_records
  end
end
