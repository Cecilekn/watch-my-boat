class BoatsController < ApplicationController
  def index
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.owner = current_user

    # @manager = User.where("manager = ?", "true").near([@boat.latitude, @boat.longitude], 1500)

    # @boat = Boat.new(boat_params)
    # @boat.owner = current_user
    # @manager = User.where(["manager = ? and address = ?", "true", "#{@boat.address}"]).first
    # @boat.manager = @manager
    if @boat.save
       @manager = User.manager.near([@boat.latitude, @boat.longitude], 1500).order('distance').first
       @boat.manager = @manager
       @boat.save!
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  def show
    @boat = Boat.find(params[:id])
    @manager = @boat.manager
  end

  def update
  end

  def boat_params
    params.require(:boat).permit(:name, :address, :photo, :size, :category)
  end
end
