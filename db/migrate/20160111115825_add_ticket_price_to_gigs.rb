class AddTicketPriceToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :ticket_price, :integer
  end
end
