class AddAuction < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :auction_start, :date
    add_column :properties, :auction_end, :date
    add_column :properties, :auction_price, :integer
    change_column :properties, :price, :integer
  end
end
