class GoatsController < ApplicationController
  def index
    if params[:search][:start_date] == ""
      @goats = Goat.all
    else
      start_date = Date.parse(params[:search][:start_date])
      end_date = Date.parse(params[:search][:end_date])
      bookings = Booking.where(start_date: start_date..end_date).or(Booking.where(end_date: start_date..end_date))
      if bookings.first.nil?
        @goats = Goat.all
      else
        @goats = Goat.where.not(bookings: bookings)
      end
    end
  end

  def show
    @goat = Goat.find(params[:id])
    @booking = Booking.new
  end

  def new
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(goat_params)
    @goat.user = current_user
    if @goat.save
      redirect_to goat_path(@goat)
    else
      render :new
    end
  end

  def edit
    @goat = Goat.find(params[:id])
  end

  def update
    @goat = Goat.find(params[:id])
    @goat.update(goat_params)

    redirect_to goat_path(@goat)
  end

  def destroy
    @goat = Goat.find(params[:id])
    @goat.destroy

    redirect_to goats_path
  end

  def my_goats
    # raise
    @goats = Goat.where("user_id = ?", current_user.id)
  end

  private

  def goat_params
    params.require(:goat).permit(:name, :color, :cuteness, :price, :photo)
  end
end
