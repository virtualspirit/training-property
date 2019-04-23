class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
      t.references :property, foreign_key: true
      t.integer :user_id
      t.integer :price

      t.timestamps
    end
  end
end
