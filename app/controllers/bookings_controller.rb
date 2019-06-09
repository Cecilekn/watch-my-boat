class BookingsController < ApplicationController
  def new
    @package = Package.find(params[:package_id])
    @booking = Booking.new
  end

  def create
    @package = Package.find(params[:package_id])
    if @package.kind == "abonnement"
      @boat = Boat.find(params[:boat_id])
      for i in 1..12 do
        @booking = Booking.new(
          title: "Visite mensuelle",
          completed: false,
          date: i.month.from_now
          )
        @booking.package = @package
        @booking.boat = @boat
        @booking.save!
      end
      redirect_to dashboard_path
    elsif @package.kind == "offre"
      @boat = current_user.owned_boats.first
      @booking = Booking.new(booking_params)
      @booking.title = "#{@package.title}"
      @booking.package = @package
      @booking.boat = @boat
      if @booking.save
        redirect_to dashboard_path
      else
        render 'bookings/new'
      end
    end
  end

  def show
  end

  def update
  end

  def booking_params
    params.require(:booking).permit(:date, :hour, :comment)
  end

end
