class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.references :property, foreign_key: true
      t.text :image_data

      t.timestamps
    end
  end
end
