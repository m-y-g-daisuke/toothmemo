class DropTableToCheckRecords < ActiveRecord::Migration[5.2]
  def change
    remove_reference :posts_check_records, :post
    drop_table :check_records
    drop_table :posts_check_records
  end
end
