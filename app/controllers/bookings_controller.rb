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
    @booking = current_user.bookings.create(booking_params)
    redirect_to(@booking)
  end

  def show
    @booking = Booking.find(params[:id])
  end

    private
    def booking_params
      params.require(:booking).permit(:seats, :user_id, :gig_id)
    end

  end