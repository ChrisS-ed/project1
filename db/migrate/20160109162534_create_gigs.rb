class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :name
      t.text :description
      t.integer :artist_id
      t.integer :venue_id
      t.integer :tickets_available
      t.string :start_time
      t.string :end_time

      t.timestamps null: false
    end
  end
end
