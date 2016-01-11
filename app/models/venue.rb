class Venue < ActiveRecord::Base
  has_many :gigs
  has_many :artists, through: :gigs

  def self.search(q)
    where('name like :value OR location like :value', value: "%#{q}%")
  end

end
