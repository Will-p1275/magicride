class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @my_rides = current_user.rides
    @my_bookings = current_user.bookings
  end
end
