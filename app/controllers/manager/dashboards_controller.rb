class Manager::DashboardsController < ApplicationController
  def show
    @boat = current_user.managed_boats.first
    @bookings = @boat.bookings
end
