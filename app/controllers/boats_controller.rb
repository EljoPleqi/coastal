class BoatsController < ApplicationController
  before_action :find_boat, only: [:show, :edit, :update, :destroy]
  def index
    @boats = Boat.all
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      puts "done"
      redirect_to boats_path(@boat)
    else
      puts "not done"
      render :new
    end
  end

  def new
    @boat = Boat.new
  end

  def show
    @markers =
    [{
        lat: @boat.latitude,
        lng: @boat.longitude
      }]
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
    @boat = Boat.find(params[:id])
  end
end
