class BoatsController < ApplicationController
  def index
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @manager = User.where(["manager = ? and address = ?", "true", "#{@boat.address}"]).first
    @boat.manager = @manager
    @boat.owner = current_user
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  def show
    @boat = current_user.owned_boats.first
    @manager = @boat.manager
  end

  def update
  end

  def boat_params
    params.require(:boat).permit(:name, :address, :photo, :size, :category)
  end
end
