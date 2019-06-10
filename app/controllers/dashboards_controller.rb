class DashboardsController < ApplicationController
  def show
    @boat = current_user.owned_boats.first
    @bookings = @boat.bookings
    @next_booked_offers = []
    @bookings.each do |booking|
      @next_booked_offers << booking if booking.package.kind == "offre" && booking.date > Date.today
      @last_visit = booking if booking.package.kind == "abonnement" && booking.completed == true && (Date.today - booking.date) < 31
      @next_visit = booking if booking.package.kind == "abonnement" && booking.completed == false && (booking.date - Date.today) < 31
    end
  end
end
