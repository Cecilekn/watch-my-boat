class BoatsController < ApplicationController
  def index
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.owner = current_user
    if @boat.save
       @boat.reload
       @manager = User.manager.near([@boat.latitude, @boat.longitude], 20000).order('distance').first
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
    @abonnement = Package.find_by(dimension: @boat.dimension, category: @boat.category, kind: "abonnement")
  end

  def update
  end

  def boat_params
    params.require(:boat).permit(:name, :address, :photo, :category_id, :dimension_id)
  end
end
