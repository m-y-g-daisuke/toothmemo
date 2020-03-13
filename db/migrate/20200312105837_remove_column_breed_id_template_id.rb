class RemoveColumnBreedIdTemplateId < ActiveRecord::Migration[5.2]
  def change
    remove_column :animals, :breed_id, :bigint
    remove_column :posts, :template_id, :bigint
    remove_column :posts_check_records, :template_id, :bigint
  end
end
