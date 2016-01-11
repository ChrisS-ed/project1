class SearchController < ApplicationController

  def index
    artists = Artist.search(params[:search])
    venues = Venue.search(params[:search])
    @results = artists + venues    
  end

end
