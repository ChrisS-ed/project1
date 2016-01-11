class ArtistsController < ApplicationController
    
    def index
      @artists = Artist.all
    end

    def new
      @artist = Artist.new
    end

    def create
      Artist.create(artist_params)
      redirect_to(artists_path)
    end

    def show
      @artist = Artist.find(params[:id])
    end

    private
      def artist_params
        params.require(:artist).permit(:name, :description, :image)
      end

end