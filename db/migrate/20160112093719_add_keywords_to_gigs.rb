class AddKeywordsToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :keywords, :string
  end
end
