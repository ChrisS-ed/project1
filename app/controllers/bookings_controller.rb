class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def new
    @gig = Gig.find(params[:gig_id])
    @booking = Booking.new
  end

  def create
    seats_wanted = booking_params[:seats].to_i
    this_gig = Gig.find(booking_params[:gig_id])

    # CHECK FOR GIG SCHEDULE CLASHES
    if Booking.schedule_clash(this_gig, current_user)
      flash[:alert] = "BOOKING FAILED: Sorry, this gig clashes with one of your existing bookings"
      redirect_to(new_gig_booking_path(this_gig))
      return
    end

    # CHECK ENOUGH SEATS AVAILABLE
    if seats_wanted > this_gig.tickets_available
      flash[:alert] = "BOOKING FAILED: Sorry, only #{this_gig.tickets_available} tickets left for this gig"
      redirect_to(new_gig_booking_path(this_gig))
    else
      this_gig.tickets_available -= seats_wanted
      this_gig.save
      @booking = current_user.bookings.create(booking_params)
      redirect_to(@booking)
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

    private
    def booking_params
      params.require(:booking).permit(:seats, :user_id, :gig_id)
    end

  end