class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :gig

  def self.schedule_clash(new_gig, current_user)
    if current_user.bookings == [] 
      return false
    end
    new_starttime = DateTime.parse(new_gig.start_time)
    new_endtime = DateTime.parse(new_gig.end_time)
    current_user.bookings.each do |b|
      existing_starttime = DateTime.parse(b.gig.start_time)
      existing_endtime = DateTime.parse(b.gig.end_time)
      if (new_starttime >= existing_starttime and new_starttime <= existing_endtime) or (new_endtime >= existing_starttime and new_endtime <= existing_endtime)
        return true
      elsif (new_starttime <= existing_starttime) and (new_endtime >= existing_endtime)
        return true
      else return false
      end
    end
  end

end
