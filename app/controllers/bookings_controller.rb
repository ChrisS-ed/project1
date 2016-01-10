class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
      @booking = Booking.create(booking_params)
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