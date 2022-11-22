class RidesController < ApplicationController
before_action :set_ride, only: [:show, :edit, :update, :destroy]

  def index
    @rides = Ride.all
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.save

    redirect_to ride_path(@ride)
  end

  def show
  end

  def edit
  end

  def update
    @ride.update(ride_params)

    redirect_to ride_path(@ride)
  end

  def destroy
    @ride.destroy

    redirect_to rides_path, status: :see_other
  end

  private

  def set_ride
    @ride = Ride.find(params[:id])
  end

  def ride_params
    params.require(:ride).permit(:name, :category, :description, :address, :availability, :price)
  end
end
