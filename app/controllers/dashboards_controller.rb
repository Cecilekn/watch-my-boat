class DashboardsController < ApplicationController
  def show
    @boat = current_user.owned_boats.first
  end
end
