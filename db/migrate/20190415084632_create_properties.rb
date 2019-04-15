class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :price
      t.integer :parking
      t.integer :bedroom
      t.integer :toilet
      t.integer :floor
      t.string :buildsize
      t.string :landsize
      t.string :locations

      t.timestamps
    end
  end
end
