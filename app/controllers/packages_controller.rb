class PackagesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @packages = Package.where(kind: "offre")
    raise
  end

  def show
    @package = Package.find(params[:id])
    @booking = @package.bookings.new
  end
end
