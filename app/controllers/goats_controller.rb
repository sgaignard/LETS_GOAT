class GoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search].nil? || params[:search][:start_date] == ""
      @goats = Goat.all
    else
      start_date = Date.parse(params[:search][:start_date])
      end_date = Date.parse(params[:search][:end_date])
      bookings = Booking.where(start_date: start_date..end_date).or(Booking.where(end_date: start_date..end_date))
      bookings.first.nil? ? @goats = Goat.all : @goats = Goat.where.not(bookings: bookings)
      if params[:search][:filter_by].nil? && params[:search][:order_by].nil?
        @goats = Goat.order( "price ASC" )
      elsif params[:search][:filter_by].nil?
        @goats = Goat.order("price #{params[:search][:order_by] == 'ascendent' ? 'ASC' : 'DESC'}")
      elsif params[:search][:order_by].nil?
        @goats = Goat.order("#{params[:search][:filter_by]} ASC")
      else
        @goats = Goat.order("#{params[:search][:filter_by]} #{params[:search][:order_by] == 'ascendent' ? 'ASC' : 'DESC'}")
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

    redirect_to root_path
  end

  def dashboard
    @goats = Goat.where("user_id = ?", current_user.id)
    @bookings = Booking.where("user_id = ?", current_user.id)
  end

  private

  def goat_params
    params.require(:goat).permit(:name, :color, :cuteness, :price, :photo, :gender, :speed, :description)
  end
end
