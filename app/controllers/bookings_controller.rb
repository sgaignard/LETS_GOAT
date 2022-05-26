class BookingsController < ApplicationController

  def create
    user = current_user
    goat = Goat.find(params[:goat_id])
    @booking = Booking.new(set_booking_params)
    @booking.user = user
    @booking.goat = goat
    if @booking.save
      redirect_to "#"
    else
      render :new
    end
  end

  # def update
  #   @booking = Booking.find(params[:id])

  # end

  # def destroy
  # end

  private

  def set_booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
