class Manager::DashboardsController < ApplicationController
  def show
    @bookings = current_user.managed_boats.map do |boat|
      boat.bookings.where(completed: false)
    end.flatten.sort_by(&:date)
  end
end
