class RemoveTagsFromPhotos < ActiveRecord::Migration[6.1]
  def change
    remove_column :photos, :tags
  end
end
