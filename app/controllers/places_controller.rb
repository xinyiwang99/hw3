class PlacesController < ApplicationController

    def index
        @places = Place.all
    end

    def show

    end
    
      def new
        @places = Place.new
      end
    
      def create
        @place = Place.new
        @place["name"] = params["place"]["name"]
        @place.save
        redirect_to "/places"
      end

end
