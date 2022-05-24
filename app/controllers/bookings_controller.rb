class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :destroy]
  before_action :find_boat, only: [:new, :create]
  skip_before_action :authenticate_user!, only: [:new]

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.boat = @boat

    if @booking.save
      redirect_to boats_path
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

  def find_boat
    @boat = Boat.find(params[:boat_id])
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
