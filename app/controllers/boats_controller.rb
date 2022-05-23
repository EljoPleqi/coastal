class BoatsController < ApplicationController
  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to boats_path
    else
      render :new
    end
  end
  def new
    @boat = Boat.new
  end

  def show
    @booking = Booking.new
    @reviews = @boat.review
  end

  def update
  @boat.update(boat_params)
  redirect_to boats_path
  end

  def destroy
    @boat.destroy
    redirect_to boats_path
  end

  private
  def boat_params
    params.require(:boat).permit(:title, :image, :price, :city, :address, :size, :description)
  end

  def find_boat
    @boat = boat.find(params[:id])
  end

end
