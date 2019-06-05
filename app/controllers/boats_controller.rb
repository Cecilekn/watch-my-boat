class BoatsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def boat_params
    params.require(:boat).permit(:name, :address, :photo)
  end
end
