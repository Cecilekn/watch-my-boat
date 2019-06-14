class DashboardsController < ApplicationController
  def show
    @boat = current_user.owned_boats.first
    @next_visit = Booking.joins('LEFT JOIN packages ON packages.id = bookings.package_id').joins('LEFT JOIN boats ON bookings.boat_id = boats.id').where("bookings.date >= ? AND packages.kind LIKE ? AND bookings.completed = ? AND boats.id = ?", Date.today, "abonnement", false, @boat.id).order("bookings.date ASC").limit(1).first
    @last_visit = Booking.joins('LEFT JOIN packages ON packages.id = bookings.package_id').joins('LEFT JOIN boats ON bookings.boat_id = boats.id').where("bookings.date <= ? AND packages.kind LIKE ? AND bookings.completed = ? AND boats.id = ?", Date.today, "abonnement", true, @boat.id).order("bookings.date DESC").limit(1).first
    @next_booked_offers = Booking.joins('LEFT JOIN packages ON packages.id = bookings.package_id').joins('LEFT JOIN boats ON bookings.boat_id = boats.id').where("bookings.date >= ? AND packages.kind LIKE ? AND bookings.completed = ? AND boats.id = ?", Date.today, "offre", false, @boat.id).order("bookings.date ASC").limit(5)
    @offre1 = Package.where(kind: "offre", title: "Convoyage").first
    @offre2 = Package.where(kind: "offre", title: "Hivernage").first
    @offre3 = Package.where(kind: "offre", title: "Maintenance").first
    @offre4 = Package.where(kind: "offre", title: "Départ").first
    @news = []
    if !@next_booked_offers.nil? || !@next_visit.nil?
      @news << @next_visit
      @next_booked_offers.each do |offer|
        @news << offer
      end
    end
    if @news != [nil]
      @news_ordered = @news.sort_by{ |e| e[:date] }
    end
  end
end

