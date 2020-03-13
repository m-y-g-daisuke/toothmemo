class ChangePostsTemplatesToPostsCheckRecords < ActiveRecord::Migration[5.2]
  def change
    rename_table :posts_templates, :posts_check_records
  end
end
