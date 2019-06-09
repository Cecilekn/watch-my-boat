class BookingsController < ApplicationController
  def show
  end

  def create
    @package = Package.find(params[:package_id])
    @boat = Boat.find(params[:boat_id])

    if @package.kind == "abonnement"
      for i in 1..12 do
        booking = Booking.new(
          title: "Visite mensuelle",
          completed: false,
          date: i.month.from_now
          )
        booking.package = @package
        booking.boat = @boat
        booking.save!
      end
      redirect_to dashboard_path
    end
  end

  def update
  end
end
