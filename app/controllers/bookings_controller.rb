class BookingsController < ApplicationController
  before_action :set_ride, only: [:new, :create, :show]

  def new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    days = @booking.end_date - @booking.starting_date
    total_price = days * @ride.price_per_day
    @booking.total_price = total_price
    @booking.ride = @ride
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
    authorize @booking
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
    authorize @booking
  end

  def refuse
    @booking = Booking.find(params[:id])
    @booking.status = "refused"
    @booking.save
    redirect_to dashboard_path
    authorize @booking
  end

  private

  def set_ride
    @ride = Ride.find(params[:ride_id])
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :end_date)
  end
end
