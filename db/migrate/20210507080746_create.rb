class Create < ActiveRecord::Migration[6.1]
  def change
    create_join_table :photos, :tags do |t|
    # t.index [:photos_id, :tags_id]
    # t.index [:tags_id, :photos_id]
  end
end
end