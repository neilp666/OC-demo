class AddTicketsToListings < ActiveRecord::Migration
  def change
    add_column :listings, :tickets, :integer, default: 0
  end
end
