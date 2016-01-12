class GigsController < ApplicationController

  def index
    @gigs = Gig.all
  end

  def new
    @gig = Gig.new
  end

  def create
    Gig.create(gig_params)
    redirect_to(gigs_path)
  end

  def show
    @gig = Gig.find(params[:id])
  end

  private
    def gig_params
      params.require(:gig).permit(:name, :description, :artist_id, :venue_id, :ticket_price, :tickets_available, :start_time, :end_time, :keywords)
    end

end
