class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @cat = Cat.find(params[:cat_id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.cat = @cat
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @cat = Cat.find(params[:cat_id])
    @booking.user = current_user
    @booking.cat = @cat
    authorize @booking
    if @booking.save!
      redirect_to my_bookings_path
    else
      render :new
    end
  end

  def my_bookings
    @bookings = Booking.where(user: current_user)
    authorize @bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
