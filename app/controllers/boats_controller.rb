class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :find_boat, :show ]
  before_action :find_boat, only: [:show, :edit, :update, :destroy]

  def index
    @boats = policy_scope(Boat)
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    authorize @boat

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
    authorize @boat
  end

  def show
    @markers =
    [{
        lat: @boat.latitude,
        lng: @boat.longitude
      }]
    authorize @boat
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
    params.require(:boat).permit(:title, :price, :city, :address, :size, :description, images: [])
  end

  def find_boat
    @boat = Boat.find(params[:id])
    # authorize @boat
  end
end
