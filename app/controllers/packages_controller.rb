class PackagesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @packages = Package.all
  end

  def show
  end
end
