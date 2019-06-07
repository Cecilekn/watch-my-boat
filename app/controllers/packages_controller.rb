class PackagesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @packages = Package.where(kind: "offre")
    @package1 = Package.where(title: "Convoyage").first
    @package2 = Package.where(title: "Sortie").first
    @package3 = Package.where(title: "Maintenance").first
    @package4 = Package.where(title: "Hivernage").first
  end

  def show
    @package = Package.find(params[:id])
    @booking = @package.bookings.new
  end
end
