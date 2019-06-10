class DashboardsController < ApplicationController
  def show
    @boat = current_user.owned_boats.last
  end
end
