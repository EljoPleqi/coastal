class PagesController < ApplicationController

  def home
    @boats = Boat.all

    @markers = @boats.geocoded.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude
      }
    end
  end
end
