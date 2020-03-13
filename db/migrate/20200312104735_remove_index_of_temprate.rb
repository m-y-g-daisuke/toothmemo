class RemoveIndexOfTemprate < ActiveRecord::Migration[5.2]
  def change
    remove_index :posts,:template_id
    remove_index :posts_check_records, :template_id
    remove_foreign_key :posts, :check_records
    remove_foreign_key :posts_check_records, :check_records
  end
end
