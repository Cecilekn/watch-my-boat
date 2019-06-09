class PackagesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @offres = Package.where(kind: "offre")
  end

  def show
    @package = Package.find(params[:id])
  end
end
