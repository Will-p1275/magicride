class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @ride = Ride.find(params[:ride_id])
    authorize @booking
  end

  def create
    @ride = Ride.find(params[:ride_id])
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

  private

  def booking_params
    params.require(:booking).permit(:starting_date, :end_date)
  end
end
