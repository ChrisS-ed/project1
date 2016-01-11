class Artist < ActiveRecord::Base
  has_many :gigs
  has_many :venues, through: :gigs

  def self.search(q)
    where('name like :value OR description like :value', value: "%#{q}%")
  end
  
end
