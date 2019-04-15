class CreateAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :amenities do |t|
      t.references :property, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
