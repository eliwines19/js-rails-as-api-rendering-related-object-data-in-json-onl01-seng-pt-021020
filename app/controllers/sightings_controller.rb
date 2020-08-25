class SightingsController < ApplicationController

  def show
    sighting = Sighting.find_by(id: params[:id])
    render json: sighting, only: [:id, :bird_id, :location_id], include: [:bird, :location]
  end
end
