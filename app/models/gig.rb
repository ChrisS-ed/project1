class Gig < ActiveRecord::Base
  belongs_to :artist
  belongs_to :venue

  has_many :bookings
  has_many :users, through: :bookings
end
