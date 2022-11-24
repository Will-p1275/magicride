class RidesController < ApplicationController
  before_action :set_ride, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @rides = policy_scope(Ride)
    # Iteration for geocoding so we can display markers on map for each ride
    @markers = @rides.geocoded.map do |ride|
      {
        lat: ride.latitude,
        lng: ride.longitude
      }
    end
  end

  def new
    @ride = Ride.new
    authorize @ride
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.user = current_user
    if @ride.save
      redirect_to rides_path
    else
      render :new, status: :unprocessable_entity
    end
    authorize @ride
  end

  def show
    authorize @ride
  end

  def edit
    authorize @ride
  end

  def update
    @ride.update(ride_params)
    redirect_to ride_path(@ride)
    authorize @ride
  end

  def destroy
    @ride.destroy
    redirect_to rides_path, status: :see_other
    authorize @ride
  end

  private

  def set_ride
    @ride = Ride.find(params[:id])
  end

  def ride_params
    params.require(:ride).permit(:name, :category, :description, :address, :photo, :availability, :price_per_day)
  end
end
