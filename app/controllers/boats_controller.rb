class BoatsController < ApplicationController
  def create
  end

  def index
  end

  def show
  end

  def boat_params
    params.require(:boat).permit(:name, :address, :photo)
  end
end
