class PackagesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @packages = Package.where(kind: "offre")
  end

  def show
    @package = Package.find(params[:id])
    @booking = Booking.new
  end
end
