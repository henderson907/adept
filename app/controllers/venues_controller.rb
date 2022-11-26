class VenuesController < ApplicationController
  def index
    @venues = Venue.all

    @markers = @venues.geocoded.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        info_window: render_to_string(partial: "info_window", locals: {venue: venue}),
        image_url: helpers.asset_url("custom-map-marker.png")
      }
    end
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    if @venue.save
      redirect_to venues_path
    else
      puts "Fatal error my friend"
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:name, :address, :photo)
  end
end
