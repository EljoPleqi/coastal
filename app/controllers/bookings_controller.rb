class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :destroy]
  skip_before_action :authenticate_user!, only: [:new]

  def index
    @bookings = current_user.bookings
  end

  def show
    if current_user.bookings.find_by(id: @booking).reviews.empty?
      @review = Review.new
    else
      @review = false
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.boat = Boat.find(params[:boat_id])
    if @booking.save

      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
