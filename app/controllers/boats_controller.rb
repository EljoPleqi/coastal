class BoatsController < ApplicationController
  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to boats_path
    else
      render :new
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
