class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user

    if @boat.save
      puts "done"
      redirect_to boats_path(@bat)
    else
      puts "not done"
      render :new
    end
  end

  def new
    @boat = Boat.new
  end

  def show
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
