class Gig < ActiveRecord::Base
  belongs_to :artist
  belongs_to :venue

  has_many :bookings
  has_many :users, through: :bookings

  def self.search(q)
    where('name like :value OR description like :value OR keywords like :value', value: "%#{q}%")
  end

end
