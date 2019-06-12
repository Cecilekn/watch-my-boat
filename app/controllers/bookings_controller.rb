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
      @booking = Booking.new
      @booking.title = "#{@package.title}"
      @booking.package = @package
      @booking.boat = @boat
      @booking.amount = @package.price
      if @booking.save
        redirect_to new_package_booking_payment_path(@package, @booking)
      end
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
    @booking = Booking.find(params[:id])
    @picture = Picture.new
  end

  def update
    @booking = Booking.find(params[:id])
    package = @booking.package
    if params[:booking][:test] == "Update date"
      if @booking.update(booking_params)
        respond_to do|format|
          format.html {redirect_to new_package_booking_payment_path(package, @booking) }
          format.js
        end
      end
    else
      @booking.update(booking_params)
      redirect_to manager_dashboard_path
      BookingMailer.monthly_visit(@booking).deliver_now
    end
  end

private

  def booking_params
    params.require(:booking).permit(:title, :date, :comment, :comment2, :comment3, :check1, :check2, :check3, :check4, :check5, :check6, :check7, :check8)
  end
end
