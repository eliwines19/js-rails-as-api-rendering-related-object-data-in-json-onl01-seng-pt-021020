class SightingsController < ApplicationController

  def index
    sightings = Sighting.all
    render json: sightings.to_json(only: [:id, :bird_id, :location_id], include: [:bird, :location])
  end

  def show
    sighting = Sighting.find_by(id: params[:id])
    render json: sighting.to_json(only: [:id, :bird_id, :location_id], include: [:bird, :location])
  end
end
