class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def new?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def accept?
    Ride.find(record.ride_id).user_id == user.id
  end

  def refuse?
    Ride.find(record.ride_id).user_id == user.id
  end
end
