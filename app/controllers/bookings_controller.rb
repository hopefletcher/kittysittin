class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @bookings = Booking.find(params[:id])
  end

  def new
    @cat = Cat.find(params[:cat_id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.cat = @cat
    authorize @booking
  end



end
