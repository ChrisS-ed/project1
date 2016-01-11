class SearchController < ApplicationController

  def index
    artists = Artist.search(params[:search])
    @results = artists    
  end

end
