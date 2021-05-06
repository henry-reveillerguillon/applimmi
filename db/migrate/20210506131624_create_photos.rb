class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.text :url
      t.string :title
      t.text :description
      t.string :place
      t.string :situation
      t.references :user, null: false, foreign_key: true
      t.string :tags
      t.string :camera
      t.string :aperture
      t.string :focal
      t.string :darkeningspeed

      t.timestamps
    end
  end
end
