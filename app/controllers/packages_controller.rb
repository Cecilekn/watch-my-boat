class PackagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
  end

  def show
    @package = Package.find(params[:id])
    @booking = @package.bookings.new
  end
end
