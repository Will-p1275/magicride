class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @my_rides = current_user.rides
    @my_bookings = current_user.bookings
    @my_requests = User.find(current_user.id).requested_bookings
  end
end
