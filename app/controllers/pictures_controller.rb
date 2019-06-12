class PicturesController < ApplicationController
  # def new
  #   @picture = Picture.new
  #   @booking = Booking.find(params[:booking_id])
  # end

  def create
    @picture = Picture.new(picture_params)
    @booking = Booking.find(params[:booking_id])
    @picture.booking = @booking
    @picture.save
    redirect_to edit_booking_path(@booking)
  end

  def picture_params
    params.require(:picture).permit(:photo)
  end
end
