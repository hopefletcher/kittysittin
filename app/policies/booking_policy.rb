class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    user != record.cat.user
  end

  def my_bookings?
    true
  end

  def new?
    true
  end
end
