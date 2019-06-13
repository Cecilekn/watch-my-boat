class PicturesController < ApplicationController
  # def new
  #   @picture = Picture.new
  #   @booking = Booking.find(params[:booking_id])
  # end

  def create
    @picture = Picture.new(picture_params)
    @booking = Booking.find(params[:booking_id])
    @picture.booking = @booking
    if @picture.save
      @picture.reload
      respond_to do |format|
        format.html { redirect_to edit_booking_path(@booking) }
        format.js
      end
    end
  end

  def picture_params
    params.require(:picture).permit(:photo, :photo_cache)
  end
end
